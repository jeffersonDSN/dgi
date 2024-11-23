import 'package:dgi/presentation/app/bloc/app_bloc.dart';
import 'package:dgi/presentation/app/model/mod.dart';
import 'package:dgi/presentation/core/extensions/build_context_extentions.dart';
import 'package:dgi/presentation/core/view/i_view.dart';
import 'package:dgi/presentation/theme/app_color.dart';
import 'package:dgi/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';

class LandingViewTablet extends IView {
  const LandingViewTablet({super.key});

  @override
  Widget build(BuildContext context) {
    AppBloc bloc = appBloc(context);

    return Scaffold(
      appBar: AppBar(
        leadingWidth: MediaQuery.of(context).size.width * 0.2,
        leading: Container(
          width: MediaQuery.of(context).size.width * 0.2,
          decoration: const BoxDecoration(
            color: AppColor.primaryColorSwatch,
          ),
          child: Column(
            children: [
              gapHeight4,
              Image.asset(
                'assets/images/blue_logo.png',
                height: 34,
              ),
              Text(
                context.tr.inventory.toUpperCase(),
                style: const TextStyle(
                  color: AppColor.yellow,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
        title: Text(
          bloc.state.asLogged.mod.title(context),
          style: const TextStyle(
            color: AppColor.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Stack(
            children: [
              IconButton(
                  icon: const Icon(
                    Icons.notifications,
                  ),
                  onPressed: () {}),
              Positioned(
                top: 7,
                right: 7,
                child: Container(
                  width: 12,
                  height: 12,
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: AppColor.primaryColorSwatch,
                    borderRadius: BorderRadius.circular(32),
                    border: Border.all(
                      color: AppColor.yellow,
                      width: 2,
                    ),
                  ),
                ),
              )
            ],
          ),
          const VerticalDivider(),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 16, 0),
            child: Row(
              children: [
                const Card(
                  child: SizedBox.square(
                    dimension: 40,
                  ),
                ),
                gapWidth8,
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      bloc.state.asLogged.user.firstName,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    PopupMenuButton(
                      position: PopupMenuPosition.under,
                      tooltip: '',
                      itemBuilder: (context) => [
                        PopupMenuItem(
                          child: Text(context.tr.english),
                          onTap: () {
                            bloc.add(
                              const AppEvent.changeLanguage(
                                locale: Locale('en'),
                              ),
                            );
                          },
                        ),
                        PopupMenuItem(
                          child: Text(context.tr.portuguese),
                          onTap: () {
                            bloc.add(
                              const AppEvent.changeLanguage(
                                locale: Locale('pt'),
                              ),
                            );
                          },
                        ),
                        PopupMenuItem(
                          child: Text(context.tr.spanish),
                          onTap: () {
                            bloc.add(
                              const AppEvent.changeLanguage(
                                locale: Locale('es'),
                              ),
                            );
                          },
                        ),
                      ],
                      child: Row(
                        children: [
                          Text(
                            context.tr.selectLanguage,
                            style: TextStyle(
                              color: AppColor.secondaryColorSwatch.shade200,
                            ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: AppColor.secondaryColorSwatch.shade200,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.2,
            child: Container(
              decoration: const BoxDecoration(
                color: AppColor.primaryColorSwatch,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: ListView(
                      children: [
                        Container(
                          color: bloc.state.asLogged.mod.isModHome
                              ? AppColor.backgroundColor
                              : Colors.transparent,
                          child: ListTile(
                            iconColor: AppColor.yellow,
                            textColor: AppColor.yellow,
                            leading: const Icon(Icons.home),
                            title: Text(context.tr.home),
                            selected: bloc.state.asLogged.mod.isModHome,
                            onTap: () {
                              bloc.add(
                                const AppEvent.changeView(
                                  mod: Mod.home(),
                                ),
                              );
                            },
                          ),
                        ),
                        Container(
                          color: bloc.state.asLogged.mod.isModInventory
                              ? AppColor.backgroundColor
                              : Colors.transparent,
                          child: ListTile(
                            iconColor: AppColor.yellow,
                            textColor: AppColor.yellow,
                            leading: const Icon(Icons.inventory),
                            title: Text(context.tr.inventory),
                            selected: bloc.state.asLogged.mod.isModInventory,
                            onTap: () {
                              bloc.add(
                                const AppEvent.changeView(
                                  mod: Mod.inventory(),
                                ),
                              );
                            },
                          ),
                        ),
                        // Container(
                        //   // color: bloc.state.asLogged.mod.isModClients
                        //   //     ? AppColor.backgroundColor
                        //   //     : Colors.transparent,
                        //   child: ListTile(
                        //     iconColor: Colors.yellow,
                        //     textColor: Colors.yellow,
                        //     leading: const Icon(Icons.people),
                        //     title: const Text('Clients'),
                        //     //selected: bloc.state.asLogged.mod.isModClients,
                        //     onTap: () {
                        //       // bloc.add(
                        //       //   const AppEvent.changeView(
                        //       //     mod: Mod.clients(
                        //       //       type: ViewType.overview(),
                        //       //     ),
                        //       //   ),
                        //       // );
                        //     },
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  const Divider(),
                  ListTile(
                    iconColor: AppColor.yellow,
                    textColor: AppColor.yellow,
                    leading: const Icon(Icons.logout),
                    title: const Text('Logout'),
                    onTap: () {
                      bloc.add(
                        const AppEvent.signOut(),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: bloc.state.asLogged.mod.view(),
          ),
        ],
      ),
    );
  }
}
