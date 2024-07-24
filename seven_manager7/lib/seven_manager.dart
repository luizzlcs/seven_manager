import 'package:flutter/material.dart';
import 'package:seven_manager/src/core/constants/app_routes.dart';

import 'src/core/theme/seven_manager_theme.dart';

class SevenManager extends StatelessWidget {
  const SevenManager({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Seven Manager',
      theme: SevenManagerTheme.lightTheme,
      routes: AppRoutes.router,
    );
  }
}
