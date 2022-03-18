import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SamplePage extends StatefulWidget {
  const SamplePage({Key? key}) : super(key: key);

  @override
  _SamplePageState createState() => _SamplePageState();
}

class _SamplePageState extends State<SamplePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_rounded),
          onPressed: (){
            Get.back();
          },
        ),
        title: const Text("Sample Page"),
      ),
    );
  }
}
