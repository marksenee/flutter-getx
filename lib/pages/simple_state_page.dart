import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../utils/controller/getx_controller.dart';

class SimpleStatePage extends StatefulWidget {
  const SimpleStatePage({Key? key}) : super(key: key);

  @override
  _SimpleStatePageState createState() => _SimpleStatePageState();
}

class _SimpleStatePageState extends State<SimpleStatePage> {
  final controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple State Management"),
      ),
      body: Column(
        children: [
          Center(
          child: GetBuilder<Controller>(
            // init: Controller(),
            builder: (_) => Text('${_.counter}'),
          ),
        ),
          IconButton(
              onPressed: (){
                controller.increment();
              },
              icon: const Icon(Icons.add))
        ]
      )
    );
  }
}
