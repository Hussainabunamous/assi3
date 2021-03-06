import 'package:agriculture_flutter_app/widgets/main_logo.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../navigator_screen.dart';


class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          Container(
            height: size.height * 0.25,
          ),
          Logo(size: size),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    ExtendedNavigator.of(context).push(Routes.home);
                  },
                  child: Text(
                    'تخطي',
                    style: Theme.of(context).textTheme.headline,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    ExtendedNavigator.of(context).push(Routes.register);
                  },
                  child: Text(
                    'تسجيل',
                    style: Theme.of(context).textTheme.headline,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
