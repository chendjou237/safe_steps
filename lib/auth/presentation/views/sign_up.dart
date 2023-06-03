import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:safe_steps/app/utils/extensions/size.dart';
import 'package:safe_steps/auth/presentation/views/widgets/form_field_input.dart';
import 'package:safe_steps/auth/presentation/views/widgets/safe_button.dart';

@RoutePage()
class SignUpView extends StatefulWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final _formKey = GlobalKey<FormState>();

  final _phoneController = TextEditingController();
  final _nameController = TextEditingController();
  @override
  void dispose() {
    _phoneController.dispose();
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sign Up',
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
              'Welcome',
              style: textTheme.headlineMedium,
            ),
            6.hGap,
            Text(
              'We are glad you join us',
              style: textTheme.bodyMedium,
            ),
            125.hGap,
            SafeFieldInput(
              text: textTheme,
              hint: "What's your name?",
              controller: _nameController,
            ),
            30.hGap,
            SafeFieldInput(
              text: textTheme,
              hint: 'what about your phone Number?',
              keyboardType: TextInputType.phone,
              controller: _phoneController,
            ),
            82.hGap,
            SafeButton(
                text: 'Join Us',
                action: () => context.router.pushNamed('/otp')),
          ],
        ),
      ),
    );
  }
}
