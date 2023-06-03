import 'package:flutter/material.dart';

extension SizeExtension on num {
  // Get the proportionate height as per screen size
  Widget get hGap => SizedBox(height: toDouble());

  // Get the proportionate width as per screen size
  Widget get wGap => SizedBox(width: toDouble());
}
