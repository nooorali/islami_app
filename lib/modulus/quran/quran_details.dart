import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/core/provider/app_provider.dart';
import 'package:islami_app/core/theme/application_theme.dart';
import 'package:islami_app/modulus/quran/quran_view.dart';
import 'package:provider/provider.dart';

class QuranDetails extends StatefulWidget {
  static const String routeName="quran_details";
  QuranDetails({super.key});

  @override
  State<QuranDetails> createState() => _QuranDetailsState();
}

class _QuranDetailsState extends State<QuranDetails> {
  String content="";
  List<String> allVerses=[];


  @override
  Widget build(BuildContext context) {
    var appProvider=Provider.of<AppProvider>(context);
    var args= ModalRoute.of(context)?.settings.arguments as SuraDetails;
    var mediaQuery=MediaQuery.of(context).size;
    var theme=Theme.of(context);
    if(content.isEmpty)readFiles(args.suraNumber);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(appProvider.backGroundImage()),fit: BoxFit.cover),
      ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text("اسلامي"),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("سورة ${args.suraName}",style: theme.textTheme.bodyMedium!.copyWith(
                      color: theme.colorScheme.onSecondary,
                    )),
                    SizedBox(width: 6,),
                    Icon(Icons.play_circle,color: theme.colorScheme.onSecondary,size: 30,),
                  ],
                ),
                Divider(
                  // color: theme.primaryColor,
                  thickness: 1.2,
                  height: 10,
                  endIndent: 50,
                  indent: 50,
                ),
                
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, index) =>
                        Text(
                            "(${index+1}) ${allVerses[index]} ",
                          style: theme.textTheme.bodySmall!.copyWith(
                            color: theme.colorScheme.onSecondary,
                            height:1.5,
                          ),
                          textAlign: TextAlign.center,
                        ),
                    itemCount: allVerses.length,
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }

  readFiles(String index) async{
    String text= await rootBundle.loadString("assets/files/$index.txt");
    content=text;
    setState(() {
      allVerses=content.split("\n");
    });
    print(text);
  }
}
