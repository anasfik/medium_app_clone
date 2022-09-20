import 'package:flutter/material.dart';
import 'package:medium_app_clone/helpers/string_extension/string_extension.dart';

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
        text: tabModel.tab.text!.firstLettersToCapital(),
      ),
      widget: tabModel.widget,
    );
   }
   return tabModel;
  }
}
