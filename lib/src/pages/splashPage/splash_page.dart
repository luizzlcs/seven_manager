import 'package:flutter/material.dart';
import '../../core/constants/app_images.dart';
import '../../core/constants/app_routes.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(seconds: 3),
          () => Navigator.of(context).restorablePushReplacementNamed(AppRoutes.login));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Image(
          image: AssetImage(AppImages.logoApp),
        ),
      ),
    );
  }
}
