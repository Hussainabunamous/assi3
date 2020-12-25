import 'package:agriculture_flutter_app/widgets/drawer.dart';
import 'package:agriculture_flutter_app/widgets/card_item.dart';
import 'package:agriculture_flutter_app/widgets/title.dart';
import 'package:agriculture_flutter_app/widgets/farm_widget.dart';
import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class Home extends StatelessWidget {
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
          "الصفحة الرئيسية ",
          style:
          Theme.of(context).textTheme.headline.copyWith(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.only(bottom: 60),
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
              ),
              items: [
                Image.asset(
                  'assets/images/car.png',
                  fit: BoxFit.cover,

                ),
                Image.asset(
                  'assets/images/m1.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/images/m2.jpg',
                  fit: BoxFit.cover,
                ),

              ],
            ),
          ),
          HomeTitle(
            size: size,
            title: 'الإعلانات الحديثة',
          ),
          Container(
            height: size.height * (320 / size.height),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              reverse: true,
              //itemCount: ads.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: MyCard(
                  //  ad: ads[index],
                  ),
                );
              },
            ),
          ),
          HomeTitle(
            size: size,
            title: 'الفنادق والمطابخ',
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              height: size.height,
              width: size.width,
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.all(8),
               // itemCount: restaurants.length,
                itemBuilder: (context, index) {
                  return RestWidget(
                    //restaurant: restaurants[index],
                  );
                },
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1,
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
