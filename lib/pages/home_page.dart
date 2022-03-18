import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/pages/navigation_page.dart';
import 'package:getx/pages/sample_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Getx Study"),
      ),
      body: Column(
        children: [
          Align(
            alignment: AlignmentDirectional.center,
            child: ElevatedButton(onPressed: (){
              Get.toNamed('/navigation');
            },
                child: const Text(
                  "Getx Navigation"
                )),
          ),
          Align(
            alignment: AlignmentDirectional.center,
            child: ElevatedButton(onPressed: (){
              Get.toNamed('/controller');
            },
                child: const Text(
                    "Getx State Management"
                )),
          )
        ],
      ),
    );
  }
}
