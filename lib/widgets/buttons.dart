import 'package:flutter/material.dart';

class MyCustumButton extends StatelessWidget {
  MyCustumButton({
    Key key,
    this.text,
    this.onTap,
  }) : super(key: key);

  String text;
  Function onTap;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 8.0),
          width: double.infinity,
          height: size.height * (64 / size.height),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontFamily: 'DNT',
              ),
            ),
          ),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(36),
          ),
        ),
      ),
    );
  }
}
