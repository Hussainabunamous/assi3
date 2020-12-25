import 'package:agriculture_flutter_app/widgets/drawer.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';


class Conversation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
          "المحادثة",
          style:
          Theme.of(context).textTheme.headline.copyWith(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16.0, left: 40, right: 8),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(36),
              child: ListTile(

                subtitle: Text(
                  '10:05',
                  textAlign: TextAlign.end,
                ),
                title: Text(
                  'مرحباً',
                  textAlign: TextAlign.end,
                  style: Theme.of(context).textTheme.headline,
                ),
                trailing: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/rest1.png'),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0, left: 8, right: 40),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(36),
              child: ListTile(

                subtitle: Text('10:10'),
                title: Text(
                  'أهلاً بك',
                  textAlign: TextAlign.start,
                  style: Theme.of(context).textTheme.headline,
                ),
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/rest2.png'),
                ),
              ),
            ),
          ),
          Spacer(),
          ListTile(
            leading: Icon(
              Icons.insert_emoticon,
              color: Colors.yellow[600],
              size: 28,
            ),
            title: TextField(
              decoration: InputDecoration(
                hintText: 'الرجاء كتابة رسالتك هنا',
                border: OutlineInputBorder(),
              ),
            ),
            trailing: Icon(
              Icons.send,
              color: Theme.of(context).primaryColor,
            ),
          )
        ],
      ),
    );
  }
}
