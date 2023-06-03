import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:safe_steps/app/utils/extensions/context.dart';

class SafeFieldInput extends StatelessWidget {
  const SafeFieldInput({
    required this.text,
    required this.hint,
    this.controller,
    this.keyboardType,
    this.icon,
    this.suffix,
    this.validator,
    this.obscured = false,
    this.formatter,
  });

  final TextTheme text;
  final String hint;
  final TextEditingController? controller;
  final String? icon;
  final String? suffix;
  final String? Function(String?)? validator;
  final bool obscured;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? formatter;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      decoration: BoxDecoration(
        color: context.scheme.primaryContainer.withOpacity(0.05),
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(
          width: 2.r,
          color: context.scheme.scrim.withOpacity(0.1),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: TextFormField(
              validator: validator,
              obscureText: obscured,
              keyboardType: keyboardType,
              inputFormatters: formatter,
              decoration: InputDecoration(
                labelText: hint,
                icon: icon != null
                    ? SvgPicture.asset(
                        icon!,
                      )
                    : null,
                labelStyle: text.bodyMedium!.copyWith(
                ),
                border: InputBorder.none,
              ),
            ),
          ),
          if (suffix != null) SvgPicture.asset(suffix!)
        ],
      ),
    );
  }
}
