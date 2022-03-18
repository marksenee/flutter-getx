import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/pages/home_page.dart';
import 'package:getx/pages/getData_page.dart';
import 'package:getx/pages/navigation_page.dart';
import 'package:getx/pages/sample_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      getPages: [
        GetPage(name: '/home', page: () => const HomePage()),
        GetPage(name: '/navigation', page: () => const NavigationPage()),
        GetPage(name: '/sample', page: () => const SamplePage()),
        GetPage(name: '/getData', page: () => const GetDataPage())
      ],
    );
  }
}