import 'package:flutter/material.dart';
import 'package:islami_app/modulus/quran/quran_details.dart';
import 'package:islami_app/modulus/quran/widget/quran_items.dart';

class QuranView extends StatelessWidget {
  QuranView({super.key});
  

  @override
  Widget build(BuildContext context) {

    var theme= Theme.of(context);
    List<String> suraNames=[
    "الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
    ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
    ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
    ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
    ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
    ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
    ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
    ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
    ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
    "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"
    ];
    return Column(
      children: [
        Image.asset("assets/images/quran_image.png"),
        Divider(thickness: 1.2,
          // color: theme.primaryColor,

        ),
        Row(
          children: [
            Expanded(
                child: Text("رقم السورة",
                  textAlign:TextAlign.center,
                  style: theme.textTheme.bodyLarge,
                )),
            Container(
              width: 1.2,
              height: 50,
              color: theme.colorScheme.onPrimary,
            ),
            Expanded(
                child: Text("اسم السورة",
                  textAlign:TextAlign.center,
                  style: theme.textTheme.bodyLarge,
                )),
          ],
        ),
        Divider(thickness: 1.2,
          // color: theme.primaryColor,

        ),
        Expanded(
          child: ListView.builder(itemBuilder: (context, index) => InkWell(
            onTap: () {
              Navigator.pushNamed(context, QuranDetails.routeName,arguments:SuraDetails(suraName: suraNames[index], suraNumber: "${index+1}") );
            },
            child: QuranItems(
              suraName: suraNames[index],
              suraNumber: "${index+1}",
            ),
          ),
            itemCount: suraNames.length,
          ),
        ),
      ],
    );
  }
}
class SuraDetails{
  final String suraName;
  final String suraNumber;
  SuraDetails({required this.suraName, required this.suraNumber});

}
