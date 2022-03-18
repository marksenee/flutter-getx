import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../utils/controller/getx_controller.dart';

class ReactiveStatePage extends StatefulWidget {
  const ReactiveStatePage({Key? key}) : super(key: key);

  @override
  _ReactiveStatePageState createState() => _ReactiveStatePageState();
}

class _ReactiveStatePageState extends State<ReactiveStatePage> {
  final controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Reactive State Management"),
        ),
        body: Column(
            children: [
              // GetX
              Center(
                child: GetX<Controller>(
                  builder: (_) => Text('${_.firstCounter.value}'),
                ),
              ),
              IconButton(
                  onPressed: (){
                    controller.increment2();
                  },
                  icon: const Icon(Icons.add)),
              // Obx
              Center(
                child: Obx(() {
                  return Text('${controller.firstCounter.value}');
                })
              ),
              IconButton(
                  onPressed: (){
                    controller.increment2();
                  },
                  icon: const Icon(Icons.add))
            ]
        )
    );
  }
}
