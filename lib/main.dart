import 'package:flutter/material.dart';
import 'package:responsive_whatsapp_ui_clone/responsive/desktopScreenLayout.dart';
import 'package:responsive_whatsapp_ui_clone/responsive/mobileScreenLayout.dart';

import 'responsive/responsive_layout.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: "Responsive what's app ui clone",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(backgroundColor: Color(0xff075e55)),
        bottomSheetTheme: BottomSheetThemeData(backgroundColor: Colors.black.withOpacity(0.0)),//read about it
      ),
      home: const responsiveLayout(
          desktopScreenLayout: desktopScreenLayout(),
          mobileScreenLayout: mobileScreenLayout()),
    );
  }
}
