

import 'package:flutter/cupertino.dart';
import 'package:login_register/Screens/Login/LoginSreens.dart';
import 'package:login_register/Screens/Register/RegisterScreens.dart';

final Map<String, WidgetBuilder> routes = {
  LoginScreen.routeName: (context) => LoginScreen(),
  RegisterScreen.routeName: (context) => RegisterScreen()
};
