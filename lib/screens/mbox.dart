import 'package:agriculture_flutter_app/widgets/drawer.dart';
import 'package:agriculture_flutter_app/widgets/header.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../navigator_screen.dart';


class MailBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent[50],
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
          "الرسائل",
          style:
          Theme.of(context).textTheme.headline.copyWith(color: Colors.white),
        ),
        centerTitle: true,
      ),
      endDrawer: AppDrawer(),
      body: ListView.builder(
      //  itemCount: users.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              SizedBox(
                height: 16,
              ),
              HeaderWidget(
                onTap: () {
                  ExtendedNavigator.of(context).push(Routes.conversation);
                },
                //title: users[index].from,
                //subtitle: users[index].message,
                trailing: CircleAvatar(
                  backgroundImage: AssetImage("users[index].imageUrl"),
                ),
              ),
              Divider()
            ],
          );
        },
      ),
    );
  }
}
