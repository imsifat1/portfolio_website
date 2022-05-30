part of 'theme_switch_bloc.dart';

@immutable
abstract class ThemeSwitchEvent {}

class ThemeSwitchToggleEvent extends ThemeSwitchEvent {
  ThemeSwitchToggleEvent(this.isDark);
  final bool isDark;
}
