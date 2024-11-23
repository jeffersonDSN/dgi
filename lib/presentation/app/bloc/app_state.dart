part of 'app_bloc.dart';

@freezed
class AppState with _$AppState {
  const factory AppState.signIn({
    required Locale locale,
  }) = AppStateIn;

  const factory AppState.logged({
    required User user,
    required Mod mod,
    required Locale locale,
  }) = AppStateLogged;
}

extension OnAppState on AppState {
  AppStateLogged get asLogged => this as AppStateLogged;
}
