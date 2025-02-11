import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget desktopScreen;
  final Widget mobileScreen;
  const ResponsiveLayout(this.desktopScreen, this.mobileScreen, {super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints){
      if (constraints.maxWidth > 600) {
        return desktopScreen;
      } else {
        return mobileScreen;
      }
    });
  }
}
