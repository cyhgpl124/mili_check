import 'package:logger/logger.dart';

class MiliLogger {
  static final Logger _logger = Logger(
    printer: PrettyPrinter(
      methodCount: 0,
      errorMethodCount: 5,
      lineLength: 80,
      colors: true,
      printEmojis: true,
    ),
  );

  /// 단순 로그가 아닌 "이벤트 A 발생 -> 결과 B 도출"의 인과관계를 기록합니다.
  static void logSecurityFlow({
    required String trigger,
    required String action,
    required String result,
  }) {
    _logger.i("[SECURITY FLOW]\n▶ 원인: $trigger\n▶ 수행: $action\n▶ 결과: $result");
  }

  static void e(String message, [dynamic error, StackTrace? stackTrace]) =>
      _logger.e(message, error: error, stackTrace: stackTrace);
}