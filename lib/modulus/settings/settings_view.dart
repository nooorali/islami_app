import 'package:flutter/material.dart';
import 'package:islami_app/core/provider/app_provider.dart';
import 'package:islami_app/modulus/settings/widget/language_bottom_sheet_widget.dart';
import 'package:islami_app/modulus/settings/widget/settings_item.dart';
import 'package:islami_app/modulus/settings/widget/theme_bottom_sheet_widget.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  @override
  Widget build(BuildContext context) {
    var local=AppLocalizations.of(context)!;
    var appProvider=Provider.of<AppProvider>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SettingsItem(
            settingOptionTitle:local.language,
            onOptionTap:(){
            showLanguageBottomSheet(context);
            },
            choosedOption:appProvider.currentLocal=="en" ?"English" : "عربي" ,),
          const SizedBox(height: 40,),
          SettingsItem(
            settingOptionTitle:local.theme_mode ,
            onOptionTap: (){
            showThemeModeBottomSheet(context);
              },
            choosedOption: appProvider.isDark()? local.dark : local.light,)
        ],
      ),
    );
  }

  void showLanguageBottomSheet(BuildContext context) {
    showModalBottomSheet(context: context, builder: (context) => const LanguageBottomSheetWidget(),);
  }

  void showThemeModeBottomSheet(BuildContext context) {
    showModalBottomSheet(context: context, builder: (context) => const ThemeBottomSheetWidget(),);
  }
}
