import 'package:safe_steps/app/utils/logger.dart';
import 'package:sms_advanced/sms_advanced.dart';

class SmsServices {
  SmsSender sender = SmsSender();

  void sendSms(String message, String phoneNumber) {
    try {
      sender.sendSms(SmsMessage(phoneNumber, 'Hello flutter world!'));
      print('Sending SMS to $phoneNumber');
    } catch (e) {
      logError(e);
    }
  }

  SmsReceiver receiver = SmsReceiver();
  void listenToSms(String phoneNumber, Function(SmsMessage) onSmsReceived) {
    receiver.onSmsReceived!.listen((SmsMessage msg) => print(msg.body));
  }
}
