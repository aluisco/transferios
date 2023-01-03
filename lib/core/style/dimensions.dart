import 'package:flutter/cupertino.dart';

extension XSpace on num {
  /// space vertical
  SizedBox get vSpace => SizedBox(height: toDouble());

  /// space horizontal
  SizedBox get hSpace => SizedBox(width: toDouble());
}

const double defPaddingValue = 16.0;
const double defRadiusValue = 10.0;
const Radius defRadiusCircular = Radius.circular(defRadiusValue);
final BorderRadius defBorderRadiusCircular =
    BorderRadius.circular(defRadiusValue);
const EdgeInsets defPaddingAll = EdgeInsets.all(defPaddingValue);
