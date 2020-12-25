import 'package:agriculture_flutter_app/widgets/drawer.dart';
import 'package:agriculture_flutter_app/widgets/design_card.dart';
import 'package:agriculture_flutter_app/widgets/header.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../navigator_screen.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      endDrawer: AppDrawer(),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            ExtendedNavigator.of(context).pop();
          },
        ),
        title: Text(
          "التسجيل",
          style:
          Theme.of(context).textTheme.headline.copyWith(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height * (20 / size.height),
            ),
            HeaderWidget(
              title: ' مستخدم جديد',
              subtitle: 'يمكنك تسجيل عضوية مجاناً',
            ),
            SizedBox(
              height: size.height * (60 / size.height),
            ),
            Column(
              children: [
                CircleCard(
                  Text("مطعم") ,
                  Image: Image.asset('assets/images/shop.png'),
                  onTap: () {
                    ExtendedNavigator.of(context).push(
                      Routes.registerRestaurant,
                    );
                  },
                ),
                SizedBox(
                  height: size.height * (15 / size.height),
                ),
                CircleCard(
                  Text("العملاء"),
                  Image: Image.asset('assets/images/user.png'),
                  onTap: () {
                    ExtendedNavigator.of(context).push(Routes.registerChef);
                  },
                ),
                SizedBox(
                  height: size.height * (16 / size.height),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
