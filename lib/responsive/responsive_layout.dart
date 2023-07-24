import 'package:flutter/material.dart';

class responsiveLayout extends StatelessWidget {
  final Widget mobileScreenLayout;
  final Widget desktopScreenLayout;
  const responsiveLayout({ // constructor's named parameter
    required this.mobileScreenLayout,
    required this.desktopScreenLayout
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder:(context,constraints){
          if(constraints.maxWidth < 1100){return mobileScreenLayout;}
          return desktopScreenLayout;
          }
         );
  }
}
