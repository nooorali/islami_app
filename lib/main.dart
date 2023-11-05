import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/core/provider/app_provider.dart';
import 'package:islami_app/core/theme/application_theme.dart';
import 'package:islami_app/layout/home_screen.dart';
import 'package:islami_app/modulus/hadeth/hadeth_details.dart';
import 'package:islami_app/modulus/quran/quran_details.dart';
import 'package:islami_app/modulus/splash_screen/splash_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => AppProvider(),
      child: const MyApplication()));
}

class MyApplication extends StatelessWidget {
  const MyApplication({super.key});

  @override
  Widget build(BuildContext context) {
    var appProvider= Provider.of<AppProvider>(context);
    return MaterialApp(
      locale: Locale(appProvider.currentLocal),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: ApplicationTheme.lightTheme,
      darkTheme: ApplicationTheme.darkTheme,
      themeMode:appProvider.currentTheme,    //<--------
      debugShowCheckedModeBanner: false,
      initialRoute:SplashScreen.routeName ,
      routes:{
        SplashScreen.routeName:(context) => SplashScreen(),
        HomeScreen.routeName:(context) => HomeScreen(),
        QuranDetails.routeName:(context) => QuranDetails(),
        HadethDetails.routeName:(context) => HadethDetails(),
      },
    );
  }
}


