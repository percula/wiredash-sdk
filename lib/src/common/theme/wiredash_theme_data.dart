import 'dart:ui' show Brightness;

import 'package:flutter/rendering.dart';
import 'package:wiredash/src/common/theme/device_class.dart';

class WiredashThemeData {
  factory WiredashThemeData({
    Brightness brightness = Brightness.light,
    DeviceClass deviceClass = DeviceClass.handsetLarge,
    Color? primaryColor,
    Color? secondaryColor,
    Color? primaryTextColor,
    Color? secondaryTextColor,
    Color? primaryBackgroundColor,
    Color? secondaryBackgroundColor,
    Color? errorColor,
    String? fontFamily,
  }) {
    if (brightness == Brightness.light) {
      return WiredashThemeData._(
        brightness: brightness,
        deviceClass: deviceClass,
        primaryColor: primaryColor ?? const Color(0xff1A56DB),
        secondaryColor: secondaryColor ?? const Color(0xffE8EEFB),
        primaryTextColor: primaryTextColor ?? const Color(0xff030A1C),
        secondaryTextColor: secondaryTextColor ?? const Color(0xff8C93A2),
        primaryBackgroundColor:
            primaryBackgroundColor ?? const Color(0xffffffff),
        secondaryBackgroundColor:
            secondaryBackgroundColor ?? const Color(0xfff5f6f8),
        errorColor: errorColor ?? const Color(0xffff5c6a),
        fontFamily: fontFamily ?? _fontFamily,
      );
    } else {
      return WiredashThemeData._(
        brightness: brightness,
        deviceClass: deviceClass,
        primaryColor: primaryColor ?? const Color(0xff1A56DB),
        secondaryColor: secondaryColor ?? const Color(0xffE8EEFB),
        primaryTextColor: primaryTextColor ?? const Color(0xff030A1C),
        secondaryTextColor: secondaryTextColor ?? const Color(0xff8C93A2),
        primaryBackgroundColor:
            primaryBackgroundColor ?? const Color(0xffffffff),
        secondaryBackgroundColor:
            secondaryBackgroundColor ?? const Color(0xfff5f6f8),
        errorColor: errorColor ?? const Color(0xffff5c6a),
        fontFamily: fontFamily ?? _fontFamily,
      );
    }
  }

  WiredashThemeData._({
    required this.brightness,
    required this.deviceClass,
    required this.primaryColor,
    required this.secondaryColor,
    required this.primaryTextColor,
    required this.secondaryTextColor,
    required this.primaryBackgroundColor,
    required this.secondaryBackgroundColor,
    required this.errorColor,
    required this.fontFamily,
  });

  final Brightness brightness;

  final Color primaryColor;
  final Color secondaryColor;

  final Color primaryTextColor;
  final Color secondaryTextColor;

  final Color primaryBackgroundColor;
  final Color secondaryBackgroundColor;
  final Color errorColor;

  final DeviceClass deviceClass;

  final String fontFamily;

  static const _fontFamily = 'Inter';
  static const _packageName = 'wiredash';

  String? get packageName => fontFamily == _fontFamily ? _packageName : null;

  TextStyle get headlineTextStyle => TextStyle(
        package: packageName,
        fontFamily: fontFamily,
        fontSize: 28,
        color: primaryTextColor,
        fontWeight: FontWeight.bold,
      );

  TextStyle get titleTextStyle => TextStyle(
        package: packageName,
        fontFamily: fontFamily,
        fontSize: 20,
        color: primaryTextColor,
        fontWeight: FontWeight.bold,
      );

  TextStyle get bodyTextStyle => TextStyle(
        package: packageName,
        fontFamily: fontFamily,
        fontSize: 16,
        color: primaryTextColor,
        fontWeight: FontWeight.normal,
      );

  TextStyle get captionTextStyle => TextStyle(
        package: packageName,
        fontFamily: fontFamily,
        fontSize: 10,
        color: secondaryTextColor,
        fontWeight: FontWeight.normal,
      );

  TextStyle get inputTextStyle => TextStyle(
        package: packageName,
        fontFamily: fontFamily,
        fontSize: 14,
        color: primaryTextColor,
      );

  TextStyle get inputErrorTextStyle => TextStyle(
        package: packageName,
        fontFamily: fontFamily,
        fontSize: 12,
        color: errorColor,
      );

  double get horizontalPadding {
    switch (deviceClass) {
      case DeviceClass.handsetSmall:
        return 8;
      case DeviceClass.handsetMedium:
        return 16;
      case DeviceClass.handsetLarge:
        return 32;
      case DeviceClass.tabletSmall:
        return 64;
      case DeviceClass.tabletLarge:
        return 64;
      case DeviceClass.desktopSmall:
        return 128;
      case DeviceClass.desktopLarge:
        return 128;
    }
  }
}
