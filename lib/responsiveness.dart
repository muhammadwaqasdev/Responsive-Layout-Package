import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'dart:io' show Platform;

class ResponsiveBuilder extends StatelessWidget {
  final Widget mobile;
  final Widget web;
  final Widget? desktop;
  final Widget? tablet;
  const ResponsiveBuilder({
    Key? key,
    required this.mobile,
    required this.web,
    required this.desktop,
    required this.tablet,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (kIsWeb && constraints.maxWidth >= 770) {
        return web;
      } else if (constraints.minWidth >= 480 && constraints.maxWidth < 770) {
        return tablet ?? mobile;
      } else if (constraints.maxWidth < 480 ||
          Platform.isAndroid ||
          Platform.isIOS) {
        return mobile;
      } else if (Platform.isWindows || Platform.isMacOS || Platform.isLinux) {
        return desktop ?? web;
      } else {
        return const Text("Un_Supported UI");
      }
    });
  }
}
