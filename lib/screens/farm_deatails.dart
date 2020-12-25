import 'package:agriculture_flutter_app/widgets/drawer.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../navigator_screen.dart';


class RestaurantDetails extends StatelessWidget {
 // List<Ads> ads;
 // Restaurant restaurant;

  //RestaurantDetails({this.restaurant, this.ads});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
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
          "تفاصيل المتجر ",
          style:
          Theme.of(context).textTheme.headline.copyWith(color: Colors.white),
        ),
        centerTitle: true,
      ),
      endDrawer: AppDrawer(),
      body: SingleChildScrollView(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width: double.infinity,
                height: size.height * (250 / size.height),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    image: AssetImage("restaurant.imageUrl"),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(16),
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
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ListTile(
                        title: Text(
                          "restaurant.owner",
                          textAlign: TextAlign.end,
                          style: Theme.of(context).textTheme.headline,
                        ),
                        trailing: CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage(
                            "restaurant.imageUrl",
                          ),
                        ),
                      ),
                    ),
                    ListTile(

                      title: Padding(
                        padding:
                            const EdgeInsets.only(bottom: 16.0, top: 8),
                        child: Text(
                          'إعلانات المطعم',
                          style: Theme.of(context).textTheme.headline,
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 24),
                      width: double.infinity,
                      height: size.height * (200 / size.height),
                      child: ListView.builder(
                       // itemCount: ads.length,
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: Column(
                            children: [
                              ListTile(
                                leading: Icon(
                                  Icons.arrow_back_ios,
                                  color: Colors.black,
                                ),
                                trailing: Icon(
                                  Icons.account_circle,
                                  color: Colors.black,
                                ),
                                title: Text(
                                 " ads[index].title",
                                  style:
                                      Theme.of(context).textTheme.headline,
                                  textAlign: TextAlign.end,
                                ),
                                onTap: () {
                                  ExtendedNavigator.of(context).push(
                                    Routes.adDetails,
                                    arguments: AdDetailsArguments(
                                     // ad: ads[index],
                                    ),
                                  );
                                },
                              ),
                              Divider(),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AdDetailsArguments {
}
