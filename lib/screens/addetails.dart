import 'package:agriculture_flutter_app/widgets/drawer.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';


class AdDetails extends StatelessWidget {
  //Ads ad;

 // AdDetails(this.ad);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              title: Text(""),
              icon: Icon(
                Icons.email,
                color: Colors.orangeAccent,
              )),
          BottomNavigationBarItem(
              title: Text(""),
              icon: Icon(
                Icons.phone,
                color: Colors.blue,
              )),
          BottomNavigationBarItem(
              title: Text(""),
              icon: Icon(
                Icons.error_outline,
                color: Colors.red,
              )),
          BottomNavigationBarItem(
            title: Text(""),
            icon: Icon(
              Icons.share,
              color: Colors.green,
            ),
          ),
        ],
        type: BottomNavigationBarType.fixed,
      ),
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
    "تفاصيل الاعلان",
    style:
    Theme.of(context).textTheme.headline.copyWith(color: Colors.white),
    ),
    centerTitle: true,
    ),
      body: SingleChildScrollView(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              width: double.infinity,
              height: size.height * (250 / size.height),
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.contain, image: AssetImage('assets/images/m4.jpg')),
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
                  SizedBox(
                    height: size.height * (15 / size.height),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "title",
                      style: Theme.of(context).textTheme.headline,
                      textAlign: TextAlign.end,
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      "description",
                      style: Theme.of(context).textTheme.headline,
                      textAlign: TextAlign.end,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      "description",
                      style: Theme.of(context).textTheme.headline,
                      textAlign: TextAlign.end,
                    ),
                  ),

                  Divider(),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ListTile(
                      title: Text(
                        "owner",
                        textAlign: TextAlign.end,
                        style: Theme.of(context).textTheme.headline,
                      ),
                      trailing: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage(
                          "imageUrl",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
