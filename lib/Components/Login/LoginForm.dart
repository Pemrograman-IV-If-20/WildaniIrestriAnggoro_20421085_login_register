

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_register/Components/custom_surfix_icon.dart';
import 'package:login_register/Screens/Register/RegisterScreens.dart';
import 'package:login_register/utils/constrants.dart';

import '../../size_config.dart';
import '../default_button_custome_color.dart';

class SignInform extends StatefulWidget {
  @override
  _SignInform createState() => _SignInform();
}


class _SignInform extends State<SignInform> {
final _formKey = GlobalKey<FormState>();
String? username;
String? passowrd;
bool? remember = false;

TextEditingController txtUserName = TextEditingController(),
    txtPassword = TextEditingController();

  FocusNode focusNode = new FocusNode();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          buildUsername(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPassword(),
          SizedBox(height: getProportionateScreenHeight(30)),
          Row(
            children: [
              Checkbox(
                  value: remember,
                  onChanged: (value) {
                    setState(() {
                      remember = value;
                    });
                  }),
              Text("Tetap Masuk"),
              Spacer(),
              GestureDetector(
                onTap: () {},
                child: Text(" Lupa Password?",
                    style: TextStyle(decoration: TextDecoration.underline)),
              )
            ],
          ),
          DefaultButtonCustomeColor(
            color: kColorRedSlow,
            text: "Masuk",
            press: () {},
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, RegisterScreen.routeName);
            },
            child: Text(
              "Belum punya akun? Daftar disini",
              style: TextStyle(decoration: TextDecoration.underline),
            ),
          )
        ],
      ),
    );
  }


  TextFormField buildUsername() {
    return TextFormField(
      keyboardType: TextInputType.text,
      style: mTitleStyle,
      decoration: InputDecoration(
        labelText: 'Username',
        hintText: 'Masukan username anda',
        labelStyle: TextStyle(
          color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(
          svgIcon: "assets/icons/User.svg")
      ),
    );
  }

  TextFormField buildPassword() {
    return TextFormField(
      obscureText: true,
      style: mTitleStyle,
      decoration: InputDecoration(
          labelText: 'Password',
          hintText: 'Masukan Password anda',
          labelStyle: TextStyle(
              color: focusNode.hasFocus ? mSubtitleColor : kPrimaryColor),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg")),
    );
  }
}