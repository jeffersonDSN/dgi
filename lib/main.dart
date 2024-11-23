import 'package:dgi/firebase_options.dart';
import 'package:dgi/presentation/app/bloc/app_bloc.dart';
import 'package:dgi/presentation/core/localization/app_localizations.dart';
import 'package:dgi/presentation/lading/lading.dart';
import 'package:dgi/presentation/sign/sign_in/sign_in.dart';
import 'package:dgi/presentation/theme/app_theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    BlocProvider(
      create: (context) => AppBloc(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DGI',
      theme: AppTheme.mainTheme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: BlocBuilder<AppBloc, AppState>(
        bloc: BlocProvider.of<AppBloc>(context),
        builder: (context, state) {
          return Localizations.override(
            delegates: AppLocalizations.localizationsDelegates,
            context: context,
            locale: state.locale,
            child: state.when(
              signIn: (locate) => const SignIn(),
              logged: (user, mod, locale) => Landing(
                key: GlobalKey(),
              ),
            ),
          );
        },
      ),
    );
  }
}
