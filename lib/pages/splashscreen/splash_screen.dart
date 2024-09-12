import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _checkFirstTimeLaunch();
  }

  Future<void> _checkFirstTimeLaunch() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isFirstTime = prefs.getBool('isFirstTime') ?? true;

    if (isFirstTime) {
      await prefs.setBool('isFirstTime', false);
      await Future.delayed(
          const Duration(seconds: 2)); // Simulate splash duration
      GoRouter.of(context).go('/login_page');
    } else {
      GoRouter.of(context).go('/login_page');
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.cyan,
        body: Center(
          child: Image(image: AssetImage("assets/images/pencil.png")),
        ));
  }
}

