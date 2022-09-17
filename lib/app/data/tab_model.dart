import 'package:flutter/material.dart';
import 'package:medium_app_clone/app/config/helpers/text_methods.dart';

class TabModel {
  TabModel({
    required this.tab,
    required this.widget,
  });
  Tab tab;
  StatelessWidget widget;

  factory TabModel.withCapitalizedLabel(TabModel tabModel) {
   if(tabModel.tab.text != null) {
     return TabModel(
      tab: Tab(
        text: TextMethods.firstLettersToCapital(tabModel.tab.text!),
      ),
      widget: tabModel.widget,
    );
   }
   return tabModel;
  }
}
