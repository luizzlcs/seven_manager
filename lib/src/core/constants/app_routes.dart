import 'package:flutter/material.dart';
import 'package:seven_manager/src/pages/auth/login/login_page.dart';
import 'package:seven_manager/src/pages/splashPage/splash_page.dart';

import '../../pages/auth/recoverPassword/recover_passoword_page.dart';
import '../../pages/auth/register/register_page.dart';
import '../../pages/home/home_page.dart';
// import '../../pages/auth/login/novo_use.dart';
// import '../../pages/auth/login/novo_use_final.dart';

abstract class AppRoutes{
  static Map<String,WidgetBuilder> get router{ 
    return {
      '/':(context) => const SplashPage(),
      '/login': (context) => const LoginPage(),
      '/homePage': (context) => const HomePage(),
      '/register': (context) => const RegisterPage(),
      '/recover': (context) => const RecoverPassowordPage(),
      // '/novoUserFinal': (context) =>  NovoUserFinal(),
    };
  }
}