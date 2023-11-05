import 'package:flutter/material.dart';
import 'package:islami_app/core/provider/app_provider.dart';
import 'package:islami_app/modulus/settings/widget/selected_option_widget.dart';
import 'package:islami_app/modulus/settings/widget/unselected_option_widget.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ThemeBottomSheetWidget extends StatelessWidget {
  const ThemeBottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var local=AppLocalizations.of(context)!;
    var appProvider=Provider.of<AppProvider>(context);
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
            onTap: (){
              appProvider.changeTheme(ThemeMode.dark);
              Navigator.pop(context);
            },
              child:appProvider.isDark()? SelectedOptionWidget(selectedTitle: local.dark) : UnSelectedOptionWidget(unSelectedTitle: local.dark),),
          SizedBox(height: 35,),
          GestureDetector(
            onTap: () {
              appProvider.changeTheme(ThemeMode.light);
              Navigator.pop(context);
            },
              child: appProvider.isDark()?UnSelectedOptionWidget(unSelectedTitle: local.light) : SelectedOptionWidget(selectedTitle: local.light) ),
        ],
      ) ,
    );
  }
}
