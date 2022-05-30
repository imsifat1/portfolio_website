part of 'theme_switch_bloc.dart';

@immutable
abstract class ThemeSwitchState {}

class ThemeSwitchToggleState extends ThemeSwitchState {
  ThemeSwitchToggleState(this.isDark);
  final bool isDark;
}
