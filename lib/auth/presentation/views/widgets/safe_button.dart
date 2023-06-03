import 'package:flutter/material.dart';
import 'package:safe_steps/app/utils/constants.dart';
import 'package:safe_steps/app/utils/extensions/context.dart';
import 'package:safe_steps/app/utils/extensions/size.dart';
import 'package:safe_steps/app/utils/palette.dart';


class SafeButton extends StatelessWidget {
  const SafeButton({
    required this.text,
    this.action,
    this.color ,
    this.width = .9,
    this.icon,
    this.textColor,
    this.isOutline = false,
    this.isSelected = false,
  });
  final IconData? icon;
  final String text;
  final VoidCallback? action;
  final Color? color;
  final double width;
  final Color? textColor;
  final bool isOutline;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: action,
      child: Container(
        width: context.width * width,
        height: AppConstants.buttonHeight,
        decoration: BoxDecoration(
          color: color?? context.scheme.primary,
          borderRadius: BorderRadius.circular(AppConstants.borderRadius),
          border: (isOutline || isSelected)
              ? Border.all(
                  color: !isSelected
                      ? context.scheme.onBackground.withOpacity(0.5)
                      : context.scheme.tertiary,
                  width: 0.8,
                )
              : null,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: context.bodyLg.copyWith(
                color:
                    (textColor == null) ? context.scheme.onPrimary : textColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            if (icon != null) ...[
              8.hGap,
              Icon(icon),
            ]
          ],
        ),
      ),
    );
  }
}

class SafeButtonMedium extends StatelessWidget {
  const SafeButtonMedium({
    required this.text,
    this.action,
    this.color = Palette.primary,
    this.width = .35,
    this.icon,
    this.textColor,
    this.isOutline = false,
    this.isSelected = false,
  });
  final IconData? icon;
  final String text;
  final VoidCallback? action;
  final Color color;
  final double width;
  final Color? textColor;
  final bool isOutline;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return SafeButton(
      text: text,
      action: action,
      color: color,
      width: width,
      icon: icon,
      textColor: textColor,
      isOutline: isOutline,
      isSelected: isSelected,
    );
  }
}
