// lib/features/security_check/presentation/bloc/security_event.dart
part of 'security_bloc.dart';

/// SecurityBloc에서 처리할 모든 이벤트의 기본 클래스입니다.
abstract class SecurityEvent {}

/// 사용자가 '보안 점검 시작' 버튼을 눌렀을 때 발생하는 이벤트입니다.
/// (이 이벤트가 Data 계층의 Drift DB에 암호화된 기록을 남기도록 유도합니다.)
class PerformSecurityCheckRequested extends SecurityEvent {}

/// 로컬 저장소에 저장된 이전 보안 점검 히스토리를 불러올 때 사용하는 이벤트입니다.
class LoadSecurityHistoryRequested extends SecurityEvent {}