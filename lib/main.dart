import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sneakers_shop/data/services/dependency_injection.dart';
import 'package:sneakers_shop/view/intro_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DependecyInjection.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroScreen(),
    );
  }
}
