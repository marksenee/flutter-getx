import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/pages/sample_page.dart';

import '../utils/controller/getx_controller.dart';

class ControllerPage extends StatefulWidget {
  const ControllerPage({Key? key}) : super(key: key);

  @override
  _ControllerPageState createState() => _ControllerPageState();
}

class _ControllerPageState extends State<ControllerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Getx State Management"),
      ),
      body: Center(
        child: GetBuilder<Controller>(
          init: Controller(),
          builder: (_) => Text('${_.counter}'),
        ),
      )
    );
  }
}
