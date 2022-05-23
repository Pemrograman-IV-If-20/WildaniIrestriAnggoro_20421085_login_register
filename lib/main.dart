import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:login_register/Screens/Login/LoginSreens.dart';
import 'package:login_register/routes.dart';
import 'package:login_register/theme.dart';


void main() async {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "FERDIAN STORE",
    theme: theme(),
    initialRoute: LoginScreen.routeName,
    routes: routes,
  ));
}
