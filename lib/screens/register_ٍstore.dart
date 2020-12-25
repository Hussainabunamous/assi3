import 'package:agriculture_flutter_app/widgets/drawer.dart';
import 'package:agriculture_flutter_app/widgets/buttons.dart';
import 'package:agriculture_flutter_app/widgets/cbox.dart';
import 'package:agriculture_flutter_app/widgets/header.dart';
import 'package:agriculture_flutter_app/widgets/text_field.dart';
import 'package:agriculture_flutter_app/widgets/upload_image.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:string_validator/string_validator.dart';

class RegisterRestaurant extends StatefulWidget {
  @override
  _RegisterRestaurantState createState() => _RegisterRestaurantState();
}

class _RegisterRestaurantState extends State<RegisterRestaurant> {
  var formKey = GlobalKey<FormState>();

  String name;
  String restName;
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

  String validateRestName(String value) {
    if (value == null || value == '') {
      return 'هذا الحقل مطلوب';
    }
    if (value.length < 3) {
      return 'اسم المطعم قصير';
    }
  }

  saveRestName(String newValue) {
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
    } else if (value.length < 50) {
      return 'يجب ملوه بشكل جيد لانه قصير ';
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
          "تسجيل المطاعم",
          style:
          Theme.of(context).textTheme.headline.copyWith(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                HeaderWidget(
                  trailing: Image.asset('assets/images/shop.png'),
                  title: 'تسجيل متجر جديد',
                  subtitle: 'يمكنك تسجيل مزرعتك من هنا من هنا',
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      MyTextField(
                        validator: validateRestName,
                        onSaved: saveRestName,
                        hintText: 'اسم الشركة',
                        icon: Icon(
                          FontAwesomeIcons.store,
                          size: 18,
                        ),
                      ),
                      MyTextField(
                        validator: validateName,
                        onSaved: saveName,
                        hintText: 'اسم المستخدم',
                        icon: Icon(
                          FontAwesomeIcons.user,
                          size: 18,
                        ),
                      ),
                      MyTextField(
                        validator: validateEmail,
                        onSaved: saveEmail,
                        hintText: 'البريد الإلكتروني',
                        icon: Icon(
                          FontAwesomeIcons.mailBulk,
                          size: 16,
                        ),
                      ),
                      MyTextField(
                        validator: validatePassword,
                        onSaved: savePassword,
                        hintText: 'كلمة المرور',
                        icon: Icon(
                          FontAwesomeIcons.key,
                          size: 16,
                        ),
                      ),
                      ListTile(

                        title: Text(
                          'حدد موقعك',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'DNT',
                          ),
                        ),
                        trailing: Icon(
                          Icons.location_on,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      MyTextField(
                        validator: validatePhone,
                        onSaved: savePhone,
                        hintText: 'رقم الهاتف',
                        icon: Icon(
                          FontAwesomeIcons.phone,
                          size: 16,
                        ),
                      ),
                      UploadImage(
                        text: 'شعار المتجر',
                      ),
                      MyTextField(
                        validator: validateDescription,
                        onSaved: saveDesc,
                        hintText: 'نشاط الشركة',
                        icon: Icon(
                          FontAwesomeIcons.phoenixFramework,
                          size: 16,
                        ),
                      ),
                      MyCheckBox(
                        isChecked: isChecked,
                        title: 'قبول شروط التطبيق',
                        onChanged: (value) {
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
        ],
      ),
    );
  }
}
