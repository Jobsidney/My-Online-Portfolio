import 'package:flutter/cupertino.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget mobileLarge;
  final Widget tablet;
  final Widget desktop;
  const Responsive(
      {required this.mobile,
      required this.mobileLarge,
      required this.tablet,
      required this.desktop});

  static bool isMobile(BuildContext) =>
      MediaQuery.of(BuildContext).size.width <= 500;
  static bool isMobileLarge(BuildContext) =>
      MediaQuery.of(BuildContext).size.width <= 700;
  static bool isTablet(BuildContext) =>
      MediaQuery.of(BuildContext).size.width <= 1024;
  static bool isDesktop(BuildContext) =>
      MediaQuery.of(BuildContext).size.width <= 1024;
  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    if (_size.width >= 1024) {
      return desktop;
    } else if (_size.width >= 700 && tablet != null) {
      return tablet;
    } else if (_size.width >= 450 && mobileLarge != null) {
      return mobileLarge;
    } else {
      return mobile;
    }
  }
}
