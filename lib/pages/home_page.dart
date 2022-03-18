import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
        title: const Text("Getx"),
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
              Get.toNamed('/simple');
            },
                child: const Text(
                    "Getx Simple State Management"
                )),
          ),
          Align(
            alignment: AlignmentDirectional.center,
            child: ElevatedButton(onPressed: (){
              Get.toNamed('/reactive');
            },
                child: const Text(
                    "Getx Reactive State Management"
                )),
          ),
        ],
      ),
    );
  }
}