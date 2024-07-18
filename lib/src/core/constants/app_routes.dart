import 'package:flutter/material.dart';
import 'package:seven_manager/src/pages/auth/login/login_page.dart';
import 'package:seven_manager/src/pages/splashPage/splash_page.dart';

abstract class AppRoutes{
  static Map<String,WidgetBuilder> get router{ 
    return {
      '/':(context) => const SplashPage(),
      '/login': (context) => const LoginPage(),
    };
  }
}