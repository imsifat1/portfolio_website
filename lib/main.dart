import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio_website/home_page.dart';

void main() {
  runApp(GetMaterialApp(
      theme: ThemeData(
          brightness: Brightness.light,
          textTheme: const TextTheme(
            bodyText1: TextStyle(),
            bodyText2: TextStyle(),
          ).apply(
            bodyColor: Colors.black.withOpacity(0.7),
            displayColor: Colors.blue,
          )),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.light,
      home: HomePage()));
}
