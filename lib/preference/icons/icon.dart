// Place fonts/customicon.ttf in your fonts/ directory and
// add the following to your pubspec.yaml
// flutter:
//   fonts:
//    - family: customicon
//      fonts:
//       - asset: fonts/customicon.ttf
import 'package:flutter/widgets.dart';

class CustomIcon {
  CustomIcon._();

  static const String _fontFamily = 'CustomIcon';

  static const IconData exit = IconData(0xe905, fontFamily: _fontFamily);
  static const IconData message = IconData(0xe900, fontFamily: _fontFamily);
  static const IconData home = IconData(0xe904, fontFamily: _fontFamily);
  static const IconData profile = IconData(0xe906, fontFamily: _fontFamily);
  static const IconData trash = IconData(0xe907, fontFamily: _fontFamily);
  static const IconData favorite = IconData(0xe908, fontFamily: _fontFamily);
}
