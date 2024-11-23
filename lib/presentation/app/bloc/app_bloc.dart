import 'package:bloc/bloc.dart';
import 'package:dgi/domain/entities/user/user.dart';
import 'package:dgi/presentation/app/model/mod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/widgets.dart';

part 'app_bloc.freezed.dart';
part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  final List<AppState> _stateHistory = [];

  AppBloc()
      : super(
          const AppState.signIn(
            locale: Locale('en'),
          ),
        ) {
    on<AppEvent>((event, emit) {
      event.when(
        signIn: (user) {
          emit(
            AppState.logged(
              mod: const Mod.home(),
              user: user,
              locale: state.locale,
            ),
          );
        },
        changeView: (mod) {
          _stateHistory.add(state);
          emit(
            state.asLogged.copyWith(
              mod: mod,
            ),
          );
        },
        goBack: () {
          if (_stateHistory.isNotEmpty) {
            emit(
              _stateHistory.removeLast().asLogged.copyWith(
                    locale: state.asLogged.locale,
                  ),
            );
          }
        },
        changeLanguage: (locale) {
          emit(state.asLogged.copyWith(locale: locale));
        },
        signOut: () {
          emit(
            AppState.signIn(locale: state.locale),
          );
        },
      );
    });
  }
}
