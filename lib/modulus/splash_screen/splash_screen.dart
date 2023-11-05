import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islami_app/core/provider/app_provider.dart';
import 'package:islami_app/core/theme/application_theme.dart';
import 'package:islami_app/layout/home_screen.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName="splash_screen";
  const SplashScreen({super.key});


  @override
  Widget build(BuildContext context) {
    var appProvider=Provider.of<AppProvider>(context);
    var mediaQuery=MediaQuery.of(context).size;
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    });
    return Scaffold(
      body: Image.asset(
        appProvider.splashScreenImage(),
        width: mediaQuery.width,
        height: mediaQuery.height,
        fit:BoxFit.cover,
      ),
    );
  }
}
