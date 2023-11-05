import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../core/provider/app_provider.dart';

class TasbehView extends StatefulWidget {
  TasbehView({super.key});

  @override
  State<TasbehView> createState() => _TasbehViewState();
}

class _TasbehViewState extends State<TasbehView> {
  int count=0;
  List<String> tasbehat=["سبحان الله","الحمد لله","الله اكبر","لا حول ولا قوة الا بالله","الا اله الا الله"];
  int index=0;
  double angle=0;


  @override
  Widget build(BuildContext context) {
    var appProvider = Provider.of<AppProvider>(context);
    var theme= Theme.of(context);
    var mediaQuery=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        width: mediaQuery.width,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 40),
                    alignment: Alignment.topCenter,
                      child: Image.asset("assets/images/head_of_seb7a.png")),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                        children: [
                          SizedBox(height:75 ,),
                          Transform.rotate(
                              angle:angle ,
                              child: Theme(
                                data: ThemeData(
                                  splashColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                ),
                                child: InkWell(
                                  onTap: () {
                                    if(count == 30){
                                      if(index==2){
                                        index=0;
                                      }else{
                                        index++;
                                      }
                                      count=0;
                                    }
                                    count++;
                                    angle+=30;
                                    setState(() {
                                    });
                                  },
                                    child: Image.asset("assets/images/body_of_seb7a.png")),
                              ))
                    ]),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Text("عدد التسبيحات",style:theme.textTheme.bodySmall,),
              Container(
                margin: EdgeInsets.only(top: 10,bottom: 10),
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 25),
                decoration: BoxDecoration(
                  color: theme.primaryColor.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Text(count.toString(),textAlign: TextAlign.center,),
              ),
              Container(
                margin: EdgeInsets.only(top: 10,bottom: 10),
                padding: EdgeInsets.symmetric(horizontal: 25,vertical: 15),
                decoration: BoxDecoration(
                  color: theme.primaryColor,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Text(tasbehat[index],style: TextStyle(
                  color: Colors.white,
                ),),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
