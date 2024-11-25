import 'package:dgi/presentation/app/bloc/app_bloc.dart';
import 'package:dgi/presentation/app/model/mod.dart';
import 'package:dgi/presentation/core/extensions/build_context_extentions.dart';
import 'package:dgi/presentation/core/view/i_view.dart';
import 'package:dgi/presentation/theme/app_color.dart';
import 'package:dgi/presentation/theme/app_sizes.dart';
import 'package:flutter/material.dart';

class HomeOverviewViewMobile extends IView {
  const HomeOverviewViewMobile({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = appBloc(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primaryColorSwatch,
        iconTheme: const IconThemeData(
          color: AppColor.lightColor,
        ),
        title: Column(
          children: [
            gapHeight4,
            Image.asset(
              'assets/images/blue_logo.png',
              height: Sizes.size40,
            ),
            Text(
              context.tr.inventory.toUpperCase(),
              style: const TextStyle(
                color: AppColor.lightColor,
                fontSize: 10,
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        backgroundColor: AppColor.backgroundColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: AppColor.primaryColorSwatch,
              ),
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/blue_logo.png',
                    height: Sizes.size40,
                  ),
                  Text(
                    context.tr.inventory.toUpperCase(),
                    style: const TextStyle(
                      color: AppColor.primaryColorSwatch,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.home,
                color: AppColor.black,
              ),
              title: Text(
                context.tr.home,
                style: const TextStyle(
                  color: AppColor.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.inventory,
                color: AppColor.black,
              ),
              title: Text(
                context.tr.inventory,
                style: const TextStyle(
                  color: AppColor.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                bloc.add(
                  const AppEvent.changeView(
                    mod: Mod.inventory(),
                  ),
                );
              },
            ),
            const Spacer(),
            const Divider(),
            ListTile(
              leading: const Icon(
                Icons.logout_outlined,
                color: AppColor.black,
              ),
              title: const Text(
                'Logout',
                style: TextStyle(
                  color: AppColor.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                bloc.add(
                  const AppEvent.signOut(),
                );
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(Sizes.size16),
        child: ListView(
          children: const [],
        ),
      ),
    );
  }
}
