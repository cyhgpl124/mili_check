import 'package:flutter/material.dart';
import 'package:milicheck/features/security_check/presentation/pages/security_check_screen.dart';
import 'core/di/injection.dart'; // DI 설정 임포트

void main() async {
  // Flutter 엔진과 위젯 트리가 바인딩되는 것을 보장합니다.
  WidgetsFlutterBinding.ensureInitialized();

  // get_it과 injectable을 이용한 의존성 주입을 초기화합니다.
  configureDependencies();

  runApp(const MiliCheckApp());
}

class MiliCheckApp extends StatelessWidget {
  const MiliCheckApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Milli-check',
      theme: ThemeData(
        // 모던 테마: 무겁고 딱딱한 보안 앱(검은색, 짙은 회색)의 톤을 지양하고,
        // 신뢰감을 주면서도 가볍고 투명한 느낌의 블루 톤을 Seed 색상으로 사용합니다.
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF4A90E2),
          background: const Color(0xFFF8F9FA), // 깔끔한 오프화이트 배경
        ),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          elevation: 0,
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.black87,
        ),
      ),
      home: const SecurityCheckScreen()
    );
  }
}