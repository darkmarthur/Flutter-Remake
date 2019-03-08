import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:chedraui_flutter/utils/HexValueConverter.dart';

/*
Material Color Palette
Design Prototypes

LOGIN:
https://www.figma.com/file/LIfrDS7EKHDgz2EvOkr9oZCR/Login-(Scratch)?node-id=1%3A2

*/

class UIData {
  //routes
  // static const String homeRoute = "/home";
  static const String loginOneRoute = "/Login";

  //strings
  static const String appName = "Chedraui";

  //colors
  static Color whiteText = Colors.white;
  static Color txbBlackText = Colors.black;
  static Color chedrauiColor = HexColor('#F28524');

  static Color bgGradientTopLightBlue = HexColor('#0897FF');
  static Color bgGradientBottomBlue = HexColor('#0064FF');

  static Color btnGradienttopLightOrange = HexColor('#FFAD63');
  static Color btnGradientBottomOrange = HexColor('#EF5F31');
  static Color btnSplashColor = HexColor('#FFD6B2');

  static List<Color> btnGradient = [btnGradientBottomOrange, btnGradienttopLightOrange];

  //randomcolor
  static final Random _random = new Random();

  /// Returns a random color.
  static Color next() {
    return new Color(0xFF000000 + _random.nextInt(0x00FFFFFF));
  }
  //fonts
  // static const String quickFont = "Quicksand";
  // static const String ralewayFont = "Raleway";
  // static const String quickBoldFont = "Quicksand_Bold.otf";
  // static const String quickNormalFont = "Quicksand_Book.otf";
  // static const String quickLightFont = "Quicksand_Light.otf";

  //images
  // static const String imageDir = "assets/images";
  // static const String pkImage = "$imageDir/pk.jpg";

  //login
  // static const String enter_code_label = "Phone Number";
  // static const String enter_code_hint = "10 Digit Phone Number";
  // static const String enter_otp_label = "OTP";
  // static const String enter_otp_hint = "4 Digit OTP";
  // static const String get_otp = "Get OTP";
  // static const String resend_otp = "Resend OTP";
  // static const String login = "Login";
  // static const String enter_valid_number = "Enter 10 digit phone number";
  // static const String enter_valid_otp = "Enter 4 digit otp";

  //gneric
  // static const String error = "Error";
  // static const String success = "Success";
  // static const String ok = "OK";
  // static const String forgot_password = "Forgot Password?";
  // static const String something_went_wrong = "Something went wrong";
  // static const String coming_soon = "Coming Soon";

}

// ThemeData buildTheme() {
// Color bgGradientTopLightBlue = HexColor('#0897FF');
// Color bgGradientBottomBlue = HexColor('#0064FF');
// Color whiteText = Colors.white;
// Color txbBlackText = Colors.black;

// <resources>
//   <color name="primaryColor">#f28524</color>
//   <color name="primaryLightColor">#ffb656</color>
//   <color name="primaryDarkColor">#b95700</color>
//   <color name="secondaryColor">#0c6bff</color>
//   <color name="secondaryLightColor">#6c98ff</color>
//   <color name="secondaryDarkColor">#0042cb</color>
//   <color name="primaryTextColor">#000000</color>
//   <color name="secondaryTextColor">#ffffff</color>
// </resources>

//   Color chedrauiColor = HexColor('#F28524');

//   final ThemeData base = ThemeData();
//   return base.copyWith(
//     hintColor: chedrauiColor,
//     primaryColor: Colors.black,
//     inputDecorationTheme: InputDecorationTheme(
//       hintStyle: TextStyle(
//         color: chedrauiColor,
//       ),
//       labelStyle: TextStyle(
//         color: chedrauiColor,
//       ),
//     ),
//   );
// }
