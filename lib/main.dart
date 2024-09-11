import 'package:caretutors/pages/routes/route_pages.dart';
import 'package:caretutors/pages/routes/routes_name.dart';
import 'package:caretutors/pages/splash_screen.dart';
import 'package:caretutors/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.backgroundColor
      ),
      getPages: RoutePages.routes,
      initialRoute: RoutesName.homeScreen,
      // home: const SplashScreen(),
    );
  }
}
