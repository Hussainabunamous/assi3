import 'package:flutter/material.dart';



class MyTextField extends StatelessWidget {
  MyTextField(
      {Key key,
      this.hintText,
      this.icon,
      this.prefix,
      this.lines,
      this.keyboardType,
      this.onSaved,
      this.validator,
     })
      : super(key: key);

  String hintText;
  Widget icon;
  Widget prefix;
  int lines;
  Function validator;
  Function onSaved;
  TextInputType keyboardType;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: TextFormField(

        cursorColor: Colors.black,
        maxLines: lines,
        keyboardType: keyboardType,
        textAlign: TextAlign.end,
        validator: (value) => validator(value),
        onSaved: (newValue) => onSaved(newValue),
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          alignLabelWithHint: true,
          hintText: hintText,
        //  hintStyle: hintStyle,
          suffixIcon: icon,
          prefix: prefix,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32),
            borderSide: BorderSide(
              color: Theme.of(context).primaryColor,
              width: 1,
              style: BorderStyle.solid,
            ),
          ),
        ),
      ),
    );
  }
}
