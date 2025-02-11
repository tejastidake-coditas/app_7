import 'package:app_7/pages/desktopScreen.dart';
import 'package:app_7/pages/mobileScreen.dart';
import 'package:app_7/util/responsiveLayout.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(DesktopScreen(), MobileScreen());
  }
}
