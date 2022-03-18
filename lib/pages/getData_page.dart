import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetDataPage extends StatefulWidget {
  const GetDataPage({Key? key}) : super(key: key);

  @override
  _GetDataPageState createState() => _GetDataPageState();
}

class _GetDataPageState extends State<GetDataPage> {
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
        title: const Text("GetData Page"),
      ),
      body: Center(
          child: Text('${Get.arguments}')),
    );
  }
}
