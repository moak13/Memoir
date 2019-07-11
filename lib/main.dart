import 'package:flutter/material.dart';
import 'package:memoir/pages/forgot_password.dart';
import 'package:memoir/pages/login.dart';
import 'package:memoir/pages/onboard.dart';
import 'package:memoir/pages/signup.dart';
import 'package:memoir/pages/wrapper.dart';

void main() => runApp(new MaterialApp(
    title: 'Memoir',
    theme: ThemeData(primaryColor: Colors.blueGrey),
    debugShowCheckedModeBanner: false,
    home: OnboardView(),
    routes: <String, WidgetBuilder>{
      'onboard': (BuildContext context) => OnboardView(),
      'login': (BuildContext context) => LoginView(),
      'signup': (BuildContext context) => SignupView(),
      'forgot': (BuildContext context) => ForgotView(),
      'wrapper': (BuildContext context) => WrapperView()
    },
));
