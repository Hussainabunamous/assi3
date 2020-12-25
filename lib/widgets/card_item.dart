import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../navigator_screen.dart';

class MyCard extends StatelessWidget {
  MyCard({
    Key key,
    this.onTap,
  }) : super(key: key);


Function onTap;


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: (){
        ExtendedNavigator.of(context).push(
          Routes.adDetails,
         // arguments: AdDetailsArguments(ad: ad),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                spreadRadius: 2,
                color: Colors.grey,
                offset: Offset(1.0, 1.0), //(x,y)
                blurRadius: 4,
              ),
            ],
          ),
          child: Column(
            children: [
              Container(
                width: size.width * (150 / size.width),
                height: size.height * (150 / size.height),
                child: Image.asset(
                 "assets/images/f5.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              Divider(
                color: Colors.black,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ListTile(
                      trailing: Icon(FontAwesomeIcons.file),
                      title: Text(
                       "مطلوب مزارع جديد",
                        textAlign: TextAlign.end,
                        style: Theme.of(context).textTheme.headline,
                        maxLines: 3,
                      ),
                    ),
                    ListTile(
                      trailing: Icon(FontAwesomeIcons.clock),
                      title: Text(
                        "منذ 20 د",
                        textAlign: TextAlign.end,
                        style: Theme.of(context).textTheme.headline,
                        maxLines: 3,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          width: size.width * (330 / size.width),
        ),
      ),
    );
  }
}
