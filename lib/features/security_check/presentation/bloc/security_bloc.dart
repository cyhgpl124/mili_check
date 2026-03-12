import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../domain/entities/security_record.dart';
import '../../domain/repositories/security_repository.dart';
import '../../../../core/utils/logger_util.dart';

part 'security_event.dart';
part 'security_state.dart';

@injectable
class SecurityBloc extends Bloc<SecurityEvent, SecurityState> {
  final SecurityRepository _repository;

  // DI를 통해 SecurityRepository를 주입받아 Domain 계층과 통신합니다.
  SecurityBloc(this._repository) : super(SecurityInitial()) {
    on<PerformSecurityCheckRequested>(_onPerformSecurityCheck);
    on<LoadSecurityHistoryRequested>(_onLoadSecurityHistory);
  }

  Future<void> _onPerformSecurityCheck(
    PerformSecurityCheckRequested event,
    Emitter<SecurityState> emit,
  ) async {
    emit(SecurityLoading());
    try {
      // 인과관계 로깅: 점검 요청 -> 검사 수행 -> 완료
      MiliLogger.logSecurityFlow(
        trigger: '사용자 보안 점검 요청',
        action: 'SecurityRepository.performSecurityCheck 호출',
        result: '점검 진행 중...',
      );

      final record = await _repository.performSecurityCheck();
      await _repository.saveSecurityRecord(record);

      MiliLogger.logSecurityFlow(
        trigger: '보안 점검 완료',
        action: '로컬 DB(Drift)에 암호화 저장',
        result: '상태 업데이트: ${record.statusMessage}',
      );

      emit(SecurityCheckSuccess(record));
    } catch (e) {
      MiliLogger.e('보안 점검 중 오류 발생', e);
      emit(SecurityError('보안 점검을 완료하지 못했습니다: $e'));
    }
  }

  Future<void> _onLoadSecurityHistory(
    LoadSecurityHistoryRequested event,
    Emitter<SecurityState> emit,
  ) async {
    emit(SecurityLoading());
    try {
      final history = await _repository.getSecurityHistory();
      emit(SecurityHistoryLoaded(history));
    } catch (e) {
      MiliLogger.e('히스토리 로드 중 오류 발생', e);
      emit(SecurityError('보안 기록을 불러올 수 없습니다.'));
    }
  }
}