import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';


class RestWidget extends StatelessWidget {
  // RestWidget({
  //   Key key,
  //   this.restaurant,
  // }) : super(key: key);

  //Restaurant restaurant;
  //List<Ads> ListOfAds;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
      //  ListOfAds =   ads
          //  .where((e) {
      //         return e.ownerId == restaurant.id;
      //       })
      //       .map((e) => e)
      //       .toList();
      //
      //   ExtendedNavigator.of(context).push(
      //     Routes.restaurantDetails,
      //     arguments: RestaurantDetailsArguments(
      //       restaurant: restaurant,
      //       ads: ListOfAds,
      //     ),
      //   );
      },
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
            Expanded(
              child: Image.asset(
                "restaurant.imageUrl",
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Expanded(
              child: Text(
                "restaurant.owner",
                style: Theme.of(context).textTheme.headline,
              ),
            )
          ],
        ),)
      );

  }
}
