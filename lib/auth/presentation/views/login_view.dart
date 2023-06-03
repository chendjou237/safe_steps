import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:safe_steps/app/utils/extensions/size.dart';
import 'package:safe_steps/auth/presentation/views/widgets/form_field_input.dart';
import 'package:safe_steps/auth/presentation/views/widgets/safe_button.dart';

@RoutePage()
class LoginView extends StatefulWidget {
   LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _formKey = GlobalKey<FormState>();

  final _phoneController = TextEditingController();
@override
  void dispose() {
    _phoneController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sign In',
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
              'Welcome back',
              style: textTheme.headlineMedium,
            ),
            6.hGap,
            Text(
              'Please enter your account here',
              style: textTheme.bodyMedium,
            ),
            125.hGap,
            SafeFieldInput(
              text: textTheme,
              hint: 'Enter phone Number',
              keyboardType: TextInputType.phone,
              controller: _phoneController,
            ),
            82.hGap,
            SafeButton(text: 'Sign In', action: () {}),
          ],
        ),
      ),
    );
  }
}
