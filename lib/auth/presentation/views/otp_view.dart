import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';
import 'package:safe_steps/app/utils/extensions/size.dart';
import 'package:safe_steps/auth/presentation/views/widgets/safe_button.dart';

@RoutePage()
class OtpView extends StatefulWidget {
  const OtpView({Key? key}) : super(key: key);

  @override
  State<OtpView> createState() => _OtpViewState();
}

class _OtpViewState extends State<OtpView> {
  final _formKey = GlobalKey<FormState>();

  final _otpController = TextEditingController();
  @override
  void dispose() {
    _otpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Verify Phone Number',
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 23.w, vertical: 40.h),
        child: Column(
          children: <Widget>[
            Text(
              'Enter the 6-digit code sent to you at',
              style: textTheme.headlineMedium,
            ),
            6.hGap,
            Text(
              'Please we send you a code to verify your phone number ',
              style: textTheme.bodyMedium,
            ),
            125.hGap,
            Pinput(
              length: 6,
              controller: _otpController,
            ),
            82.hGap,
            SafeButton(text: 'Verify', action: () {}),
          ],
        ),
      ),
    );
  }
}
