import 'package:flutter/material.dart';
import 'package:flutter_lib_samples2/data/controllers/auth_controller.dart';
import 'package:flutter_lib_samples2/presentation/pages/login_page.dart';
import 'package:flutter_lib_samples2/presentation/pages/navigation_page.dart';
import 'package:get/get.dart';

void main() {
  Get.put(AuthController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter GetX Login',
      getPages: [
        GetPage(name: '/', page: () => LoginPage()),
        GetPage(name: '/nav', page: () => NavigationPage()),
      ],
      initialRoute: '/',
    );
  }
}
