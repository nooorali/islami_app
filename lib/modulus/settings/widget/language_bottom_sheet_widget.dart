import 'package:flutter/material.dart';
import 'package:islami_app/core/provider/app_provider.dart';
import 'package:islami_app/modulus/settings/widget/selected_option_widget.dart';
import 'package:islami_app/modulus/settings/widget/unselected_option_widget.dart';
import 'package:provider/provider.dart';

class LanguageBottomSheetWidget extends StatelessWidget {
  const LanguageBottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var appProvider= Provider.of<AppProvider>(context);
    var theme=Theme.of(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 25),
      decoration: BoxDecoration(
        color: theme.primaryColor.withOpacity(0.8),
      ),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              appProvider.changeLanguage("en");
              Navigator.pop(context);
            },
              child: appProvider.currentLocal=="en"
                  ? SelectedOptionWidget(selectedTitle: "English") : UnSelectedOptionWidget(unSelectedTitle: "English")),
          SizedBox(height: 35,),
          GestureDetector(
            onTap: () {
              appProvider.changeLanguage("ar");
              Navigator.pop(context);
            },
              child:appProvider.currentLocal=="en"?
              UnSelectedOptionWidget(unSelectedTitle: "عربي") :SelectedOptionWidget(selectedTitle: "عربي") ),
        ],
      ) ,
    );

  }
}
