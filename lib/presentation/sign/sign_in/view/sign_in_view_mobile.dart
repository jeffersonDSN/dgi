import 'package:dgi/presentation/app/bloc/app_bloc.dart';
import 'package:dgi/presentation/core/extensions/build_context_extentions.dart';
import 'package:dgi/presentation/core/view/i_view.dart';
import 'package:dgi/presentation/sign/sign_in/bloc/sign_in_bloc.dart';
import 'package:dgi/presentation/theme/app_color.dart';
import 'package:dgi/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInViewMobile extends IView {
  SignInViewMobile({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<SignInBloc>(context);

    return Scaffold(
        body: BlocBuilder<SignInBloc, SignInState>(
      bloc: bloc,
      builder: (context, state) {
        return Container(
          color: AppColor.lightColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  color: AppColor.primaryColorSwatch,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/blue_logo.png',
                        width: 350,
                      ),
                      Text(
                        context.tr.inventory.toUpperCase(),
                        style: const TextStyle(
                          fontSize: Sizes.size20,
                          color: AppColor.lightColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        'welcome!',
                        style: TextStyle(
                          fontSize: Sizes.size20,
                          color: AppColor.lightColor,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(Sizes.size16),
                  child: SingleChildScrollView(
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          const Text(
                            'Hello!',
                            style: TextStyle(
                              fontSize: Sizes.size32,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text(
                            'Sign in to your account',
                            style: TextStyle(
                              fontSize: Sizes.size16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          gapHeight32,
                          TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'User name',
                              prefixIcon: Icon(
                                Icons.person,
                              ),
                            ),
                            initialValue: state.userName,
                            onChanged: (value) {
                              bloc.add(
                                SignInEvent.changeUserName(
                                  value: value,
                                ),
                              );
                            },
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your username';
                              }
                              return null;
                            },
                          ),
                          gapHeight32,
                          TextFormField(
                            decoration: const InputDecoration(
                              label: Text('Password'),
                              prefixIcon: Icon(
                                Icons.lock,
                              ),
                            ),
                            initialValue: state.password,
                            obscureText: true,
                            onChanged: (value) {
                              bloc.add(
                                SignInEvent.changePassword(value: value),
                              );
                            },
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your password';
                              }
                              return null;
                            },
                          ),
                          gapHeight8,
                          if (state.isSignInError)
                            const Text(
                              'The username or password you’ve entered is incorrect.',
                              style: TextStyle(
                                color: AppColor.red,
                              ),
                            ),
                          gapHeight32,
                          Row(
                            children: [
                              Expanded(
                                child: FilledButton(
                                  child: state.isSignIn
                                      ? const CircularProgressIndicator(
                                          color: AppColor.lightColor,
                                        )
                                      : const Text(
                                          'Sign in',
                                        ),
                                  onPressed: () {
                                    if (_formKey.currentState?.validate() ??
                                        false) {
                                      bloc.add(
                                        SignInEvent.signIn(
                                          callback: (value) {
                                            appBloc(context).add(
                                              AppEvent.signIn(
                                                user: value,
                                              ),
                                            );
                                          },
                                        ),
                                      );
                                    }
                                  },
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    ));
  }
}
