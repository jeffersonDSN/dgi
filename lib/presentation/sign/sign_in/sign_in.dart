import 'package:dgi/domain/controllers/user_controller.dart';
import 'package:dgi/infrastructure/firebase/employees_firestore_repository.dart';
import 'package:dgi/presentation/core/widget/dgi_responsive_widget.dart';
import 'package:dgi/presentation/sign/sign_in/bloc/sign_in_bloc.dart';
import 'package:dgi/presentation/sign/sign_in/view/sign_in_view_mobile.dart';
import 'package:dgi/presentation/sign/sign_in/view/sign_in_view_tablet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignInBloc(
        controller: UserController(
          repository: UserFireStoreRepository(tenant: ''),
        ),
      ),
      child: DGIiResponsiveWidget(
        widgetMobile: SignInViewMobile(),
        widgetTablet: SignInViewTablet(),
      ),
    );
  }
}
