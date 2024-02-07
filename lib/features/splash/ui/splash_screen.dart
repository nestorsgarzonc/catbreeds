import 'package:catbreeds/core/assets/img_assets.dart';
import 'package:catbreeds/features/home/ui/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static const route = '/';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(seconds: 2), () {
        if (mounted) GoRouter.of(context).goNamed(CatsHomeScreen.route);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(width: double.infinity),
              const Text(
                'CatBreeds',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Image.asset(
                ImgAssets.animatedCat,
                width: 200,
              )
            ],
          ),
        ),
      ),
    );
  }
}
