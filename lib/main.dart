import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio_website/home_page.dart';
import 'package:portfolio_website/theme/bloc/theme_switch_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(BlocProvider<ThemeSwitchBloc>(
    create: (context) => ThemeSwitchBloc(),
    child: BlocBuilder<ThemeSwitchBloc, ThemeSwitchState>(
      builder: (context, state) {
        return MaterialApp(
            theme: ThemeData(
              brightness: Brightness.light,
            ),
            darkTheme: ThemeData.dark(),
            themeMode: ((state as ThemeSwitchToggleState).isDark
                ? ThemeMode.dark
                : ThemeMode.light),
            home: HomePage());
      },
    ),
  ));
}
