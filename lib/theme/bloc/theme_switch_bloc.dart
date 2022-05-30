import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'theme_switch_event.dart';
part 'theme_switch_state.dart';

class ThemeSwitchBloc extends Bloc<ThemeSwitchEvent, ThemeSwitchState> {
  ThemeSwitchBloc() : super(ThemeSwitchToggleState(true)) {
    on<ThemeSwitchEvent>((event, emit) {
      emit(ThemeSwitchToggleState((event as ThemeSwitchToggleEvent).isDark));
    });
  }
}
