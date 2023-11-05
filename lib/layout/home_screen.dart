import 'package:flutter/material.dart';
import 'package:islami_app/core/provider/app_provider.dart';
import 'package:islami_app/core/theme/application_theme.dart';
import 'package:islami_app/modulus/hadeth/hadeth_view.dart';
import 'package:islami_app/modulus/quran/quran_view.dart';
import 'package:islami_app/modulus/radio/radio_view.dart';
import 'package:islami_app/modulus/settings/settings_view.dart';
import 'package:islami_app/modulus/tasbeh/tasbeh_view.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName="home_screen";
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex=0;

  List<Widget>screens=[
    QuranView(),
    HadethView(),
    TasbehView(),
    RadioView(),
    SettingsView(),
  ];

  @override
  Widget build(BuildContext context) {
    var appProvider=Provider.of<AppProvider>(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              appProvider.backGroundImage(),
            ),
            fit: BoxFit.cover),
      ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar:AppBar(
            title:Text(AppLocalizations.of(context)!.islami),
          ) ,
          bottomNavigationBar: BottomNavigationBar(
            // backgroundColor: Color(0xffB7935F),
            //   type: BottomNavigationBarType.fixed,
            //   selectedIconTheme: IconThemeData(
            //     color: Colors.black,
            //     size: 30,
            //   ),
            //   selectedItemColor: Colors.black,
            //   unselectedIconTheme: IconThemeData(
            //       size: 30,
            //       color: Colors.white
            //   ),
            //   unselectedItemColor: Colors.white,
              currentIndex: selectedIndex,
              onTap: (int index) {
                setState(() {
                  selectedIndex=index;
                });
              },
              items:[
                BottomNavigationBarItem(icon:ImageIcon(
                  AssetImage("assets/images/quran.png"),
                ),
                    label:AppLocalizations.of(context)!.quran ),
                BottomNavigationBarItem(icon:ImageIcon(
                  AssetImage("assets/images/quran-quran-svgrepo-com.png"),
                ),
                    label:AppLocalizations.of(context)!.hadeth),
                BottomNavigationBarItem(icon:ImageIcon(
                  AssetImage("assets/images/sebha_icon.png"),
                ),
                    label:AppLocalizations.of(context)!.tasbeh ),
                BottomNavigationBarItem(icon:ImageIcon(
                  AssetImage("assets/images/radio.png"),
                ),
                    label:AppLocalizations.of(context)!.radio ),
                BottomNavigationBarItem(icon: Icon(Icons.settings),
                    label:AppLocalizations.of(context)!.settings ),
              ]
          ),
          body: screens[selectedIndex],
        )
    );
  }
}
