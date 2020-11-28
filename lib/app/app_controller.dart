import 'package:cleanapp/app/models/appconfig_model.dart';
import 'package:flutter/material.dart';

class AppController {
  static final AppController instance = AppController._();
  AppController._();

  final AppConfigModel config = AppConfigModel();

  bool get isDark => config.themeSwitch.value;
  ValueNotifier<bool> get themeSwitch => config.themeSwitch;

  changeTheme(bool value){
    themeSwitch.value = value;
  }


}