

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:login_register/Components/Login/LoginComponent.dart';
import 'package:login_register/size_config.dart';

class LoginScreen extends StatelessWidget {
  static String routeName = "/sign_in";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: LoginComponent(),
    );
  }
}
