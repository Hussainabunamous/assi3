import 'package:flutter/material.dart';

class HomeTitle extends StatelessWidget {
  HomeTitle({
    Key key,
    @required this.size,
    this.title
  }) : super(key: key);

  final Size size;
  String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: size.height * (15 / size.height),
        ),
        Container(
          width: double.infinity,
          padding:
          const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          color: Colors.white,
          child: Text(
            title ,
            style: Theme.of(context).textTheme.headline,
            textAlign: TextAlign.end,
          ),
        ),
        SizedBox(
          height: size.height * (15 / size.height),
        ),
      ],
    );
  }
}