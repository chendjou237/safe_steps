import 'package:logger/logger.dart';

void logError(Object? message) {
  final logger = Logger();
  logger.e(message);
}

void logInfo(Object? message) {
  final logger = Logger();
  logger.i(message);
}

void logDebug(Object? message) {
  final logger = Logger();
  logger.d(message);
}

void logWarning(Object? message) {
  final logger = Logger();
  logger.w(message);
}
