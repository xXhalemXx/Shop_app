import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/core/injection/injection.dart';
import 'package:shop_app/core/styling/colors.dart';
import 'package:shop_app/features/home/presentation/manager/home_screen_manager/home_cubit.dart';

class SettingsBody extends StatelessWidget {
  const SettingsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        settingsHeader(context),
        settingsBody(context),
      ],
    );
  }

  Widget settingsHeader(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.25,
      decoration: BoxDecoration(
        color: secLightColor,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.person_pin,
              size: MediaQuery.of(context).size.width * 0.25,
              color: Colors.white,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.7,
              child: AutoSizeText(
                'Welcome:${getIt<HomeCubit>().userData.data!.name!}',
                maxLines: 1,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }

  settingsBody(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.67,
      child: Column(
        children: [
          ListTile(
            title: Row(
              children: [
                Icon(
                  Icons.logout_outlined,
                  color: secLightColor,
                ),
                const Text('Logout'),
              ],
            ),
            onTap: () {
              getIt<HomeCubit>().userLogout(context);
            },
          ),
          ListTile(
            title:  Row(
              children: [
                Icon(
                  Icons.info_outline,
                  color: secLightColor,
                ),
                const Text('About'),
              ],
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
