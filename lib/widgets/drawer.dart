import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../navigator_screen.dart';


class AppDrawer extends StatefulWidget {
  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  bool check = false;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(),
          MyDrawerContent(
            title: 'الصفحة الرئيسية',
            icon: Icon(Icons.home),
            route: Routes.home,
          ),
          MyDrawerContent(
            title: 'المنتجات',
            icon: Icon(Icons.store),
            route: Routes.mailBox,
          ),
          MyDrawerContent(
            title: ' الرسائل',
            icon: Icon(Icons.mail),
            route: Routes.registerRestaurant,
          ),
          MyDrawerContent(
            title: 'لوحة الادارة',
            icon: Icon(Icons.border_all),
            route: Routes.registerChef,
          ),
          MyDrawerContent(
            title: 'أضف إعلان',
            icon: Icon(Icons.add),
            route: Routes.addAds,
          ),
          MyDrawerContent(
            title: 'تواصل',
            icon: Icon(Icons.phone),
            route: Routes.contact,
          ),
          MyDrawerContent(
            title: 'الشروط والأحكام',
            icon: Icon(Icons.collections_bookmark),
            route: Routes.terms,
          ),
          MyDrawerContent(
            title: 'حول التطبيق',
            icon: Icon(Icons.info),
            route: Routes.about,
          ),
        ],
      ),
    );
  }
}

class MyDrawerContent extends StatelessWidget {
  MyDrawerContent({
    Key key,
    this.title,
    this.icon,
    this.route,
  }) : super(key: key);

  String title;
  Widget icon;
  Object route;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: () {
            ExtendedNavigator.of(context).push(route);
            ExtendedNavigator.of(context).pop();
          },
          title: Text(
            title,
            style: TextStyle(fontSize: 18, fontFamily: 'DNT'),
            textAlign: TextAlign.end,
          ),
          trailing: icon,
        ),
        Divider(),
      ],
    );
  }
}
