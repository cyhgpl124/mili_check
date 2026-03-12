import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/di/injection.dart'; // getIt을 가져오기 위함
import '../bloc/security_bloc.dart';

class SecurityCheckScreen extends StatelessWidget {
  const SecurityCheckScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      // getIt(DI)을 통해 SecurityBloc 인스턴스를 주입받아 생성합니다.
      create: (context) => getIt<SecurityBloc>(),
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: AppBar(
          title: const Text(
            'Milli-check Status',
            style: TextStyle(fontWeight: FontWeight.w600, letterSpacing: -0.5),
          ),
          centerTitle: true,
          // 무거운 느낌을 없애기 위해 투명한 앱바 유지
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SafeArea(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 40),
                _buildStatusCard(),
                const Spacer(),
                _buildActionButtons(),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // 상태를 보여주는 메인 카드 위젯
  Widget _buildStatusCard() {
    return BlocBuilder<SecurityBloc, SecurityState>(
      builder: (context, state) {
        // 1. 초기 상태
        if (state is SecurityInitial) {
          return _ModernCard(
            icon: Icons.fact_check_outlined,
            iconColor: Colors.blueAccent,
            title: '시스템 대기 중',
            subtitle: '안전한 로컬 환경에서 점검을 시작할 수 있습니다.',
          );
        }
        // 2. 로딩 상태 (무거운 프로그레스바 대신 가벼운 인디케이터)
        else if (state is SecurityLoading) {
          return const _ModernCard(
            isCustomChild: true,
            child: CircularProgressIndicator(strokeWidth: 2),
            title: '점검 진행 중...',
            subtitle: '데이터 무결성을 확인하고 있습니다.',
          );
        }
        // 3. 성공 상태
        else if (state is SecurityCheckSuccess) {
          return _ModernCard(
            icon: Icons.check_circle_outline_rounded, // 가볍고 긍정적인 체크 아이콘
            iconColor: Colors.teal,
            title: '점검 완료',
            subtitle: '상태: ${state.record.statusMessage}\n'
                '시간: ${state.record.checkedAt.toLocal().toString().split('.')[0]}',
          );
        }
        // 4. 에러 상태
        else if (state is SecurityError) {
          return _ModernCard(
            icon: Icons.error_outline_rounded,
            iconColor: Colors.redAccent,
            title: '점검 실패',
            subtitle: state.message,
          );
        }

        return const SizedBox.shrink();
      },
    );
  }

  // 액션 버튼 위젯 (이벤트 트리거)
  Widget _buildActionButtons() {
    return BlocBuilder<SecurityBloc, SecurityState>(
      builder: (context, state) {
        final isLoading = state is SecurityLoading;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: isLoading
                  ? null
                  : () {
                      // 버튼 클릭 시(A) -> 이벤트 발생(B) -> 로컬 DB 점검 로직 실행 및 상태 변경(C)
                      context
                          .read<SecurityBloc>()
                          .add(PerformSecurityCheckRequested());
                    },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16),
                backgroundColor: Theme.of(context).colorScheme.primary,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16), // 부드러운 모서리로 친근함 강조
                ),
                elevation: 0,
              ),
              child: const Text(
                '빠른 보안 점검 실행',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        );
      },
    );
  }
}

/// 모던하고 가벼운 디자인을 위한 커스텀 카드 위젯
class _ModernCard extends StatelessWidget {
  final IconData? icon;
  final Color? iconColor;
  final String title;
  final String subtitle;
  final bool isCustomChild;
  final Widget? child;

  const _ModernCard({
    this.icon,
    this.iconColor,
    required this.title,
    required this.subtitle,
    this.isCustomChild = false,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.03), // 매우 옅은 그림자로 떠있는 느낌만 제공
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        children: [
          if (isCustomChild && child != null)
            child!
          else if (icon != null)
            Icon(icon, size: 64, color: iconColor ?? Colors.grey),
          const SizedBox(height: 24),
          Text(
            title,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.black54,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
