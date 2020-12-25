import 'package:agriculture_flutter_app/widgets/drawer.dart';
import 'package:agriculture_flutter_app/widgets/buttons.dart';
import 'package:agriculture_flutter_app/widgets/cbox.dart';
import 'package:agriculture_flutter_app/widgets/header.dart';
import 'package:agriculture_flutter_app/widgets/text_field.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:string_validator/string_validator.dart';

class RegisterChef extends StatefulWidget {
  @override
  _RegisterChefState createState() => _RegisterChefState();
}

class _RegisterChefState extends State<RegisterChef> {
  var formKey = GlobalKey<FormState>();

  String name;
  String email;
  String password;
  String phone;
  String description;
  bool isChecked = false;


  saveForm() {
    bool validate = formKey.currentState.validate();
    if (isChecked) {
      if (validate) {
        formKey.currentState.save();
      } else {
        return;
      }
    } else {
      showDialog(
        context: context,
        builder: (_) => Dialog(
          child: Container(
            width: 200,
            height: 120,
            child: Column(
              children: [
                Text(
                  'الرجاء قبول شروط التطبيق',
                  style: Theme.of(context).textTheme.headline,
                  textAlign: TextAlign.end,
                ),
                SizedBox(
                  height: 16,
                ),
                RaisedButton(
                  onPressed: () {
                    ExtendedNavigator.of(context).pop();
                  },
                  child: Text(
                    'حسناً',
                    style: Theme.of(context).textTheme.headline,
                    textAlign: TextAlign.end,
                  ),
                )
              ],
            ),
          ),
        ),
      );
    }
  }

  String validateName(String value) {
    if (value == null || value == '') {
      return 'هذا الحقل مطلوب';
    }
    if (value.length < 3) {
      return 'الاسم قصير';
    }
  }

  saveName(String newValue) {
    name = newValue;
  }

  String validateEmail(String value) {
    if (value == null || value == '') {
      return 'هذا الحقل مطلوب';
    } else if (value.length < 3) {
      return 'الإيميل قصير';
    } else if (!isEmail(value)) {
      return 'صيغة خاطئة';
    }
  }

  saveEmail(String newValue) {
    email = newValue;
  }

  String validatePassword(String value) {
    if (value == null || value == '') {
      return 'هذا الحقل مطلوب';
    } else if (value.length < 3) {
      return 'كلمة المرور قصيرة';
    }
  }

  savePassword(String newValue) {
    password = newValue;
  }

  String validatePhone(String value) {
    if (value == null || value == '') {
      return 'هذا الحقل مطلوب';
    } else if (value.length < 10) {
      return 'رقم الهاتف قصير';
    }
  }

  savePhone(String newValue) {
    phone = newValue;
  }

  String validateDescription(String value) {
    if (value == null || value == '') {
      return 'هذا الحقل مطلوب';
    } else if (value.length < 30) {
      return 'الوصف قصير';
    }
  }

  saveDesc(String newValue) {
    description = newValue;
  }

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
          "تسجل المتاجر",
          style:
          Theme.of(context).textTheme.headline.copyWith(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderWidget(
              trailing: Image.asset('assets/images/user.png'),
              title: 'تسجيل مزارع جديد',
              subtitle: 'يمكن تسجيل مزارع جديد من هنا',
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            Form(
              key: formKey,
              child: Column(
                children: [
                  MyTextField(
                    keyboardType: TextInputType.text,
                    hintText: 'اسم المزارع',
                    icon: Icon(
                      FontAwesomeIcons.user,
                      size: 16,
                    ),
                    validator: validateName,
                    onSaved: saveName,
                  ),
                  MyTextField(
                    keyboardType: TextInputType.emailAddress,
                    hintText: 'البريد الإلكتروني',
                    icon: Icon(
                      FontAwesomeIcons.mailBulk,
                      size: 16,
                    ),
                    validator: validateEmail,
                    onSaved: saveEmail,
                  ),
                  MyTextField(

                    keyboardType: TextInputType.visiblePassword,
                    hintText: 'كلمة المرور',
                    icon: Icon(
                      FontAwesomeIcons.key,
                      size: 16,
                    ),
                    validator: validatePassword,
                    onSaved: savePassword,
                  ),
                  MyTextField(
                    keyboardType: TextInputType.number,
                    hintText: 'رقم الهاتف',
                    icon: Icon(
                      FontAwesomeIcons.phone,
                      size: 16,
                    ),
                    validator: validatePhone,
                    onSaved: savePhone,
                  ),
                  MyTextField(
                    keyboardType: TextInputType.text,
                    lines: 8,
                    hintText: '... يرجى كتابة مهاراتك هنا',
                    validator: validateDescription,
                    onSaved: saveDesc,
                  ),
                  MyCheckBox(
                    isChecked: isChecked,
                    title: 'قبول شروط التطبيق',
                    onChanged: (value){
                      setState(() {
                        isChecked = value;
                      });
                    },
                  ),
                  MyCustumButton(
                    text: 'تسجيل',
                    onTap: saveForm,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
