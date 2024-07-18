import 'package:flutter/material.dart';
import 'package:seven_manager/src/core/constants/app_routes.dart';


class SevenManager extends StatelessWidget {

  const SevenManager({ super.key });

   @override
   Widget build(BuildContext context) {
       return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
     routes: AppRoutes.router,
     
    );
  }
}