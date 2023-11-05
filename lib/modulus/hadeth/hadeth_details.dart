import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/core/provider/app_provider.dart';
import 'package:islami_app/core/theme/application_theme.dart';
import 'package:islami_app/modulus/hadeth/hadeth_view.dart';
import 'package:islami_app/modulus/quran/quran_view.dart';
import 'package:provider/provider.dart';

class HadethDetails extends StatefulWidget {
  static const String routeName="hadeth_details";
  HadethDetails({super.key});

  @override
  State<HadethDetails> createState() => _QuranDetailsState();
}

class _QuranDetailsState extends State<HadethDetails> {
  String content="";
  List<String> allVerses=[];


  @override
  Widget build(BuildContext context) {
    var appProvider=Provider.of<AppProvider>(context);
    var args= ModalRoute.of(context)?.settings.arguments as HadethContent;
    var mediaQuery=MediaQuery.of(context).size;
    var theme=Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(
          appProvider.backGroundImage(),
        ),
            fit: BoxFit.cover),
      ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text("اسلامي"),
            // iconTheme: IconThemeData(color: Colors.black),
          ),
          body: Container(
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 25),
            margin: EdgeInsets.only(top: 10,bottom: 60,right: 20,left: 20),
            width:mediaQuery.width,
            height: mediaQuery.height,
            decoration: BoxDecoration(
              color: theme.colorScheme.onBackground.withOpacity(0.8),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              children: [
                Text(args.title,
                style: theme.textTheme.bodyLarge!.copyWith(
                  color: theme.colorScheme.onSecondary
                ),),
                Divider(
                  color: theme.colorScheme.onPrimary,
                  thickness: 1.2,
                  height: 10,
                  endIndent: 50,
                  indent: 50,
                ),
                Expanded(
                  child: ListView(
                    children: [
                      Text(
                        args.content,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.bodySmall!.copyWith(
                          color: theme.colorScheme.onSecondary,
                          height: 1.5,
                        ),),
                    ]
                  ),
                ),

              ],
            ),
          ),
        )
    );
  }

}
