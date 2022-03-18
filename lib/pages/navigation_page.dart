import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/pages/sample_page.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  _NavigationPageState createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_rounded),
          onPressed: (){
            Get.toNamed('/home');
          },
        ),
        title: const Text("Getx Study"),
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              leading: const Text("Get.to"),
              onTap: () {
                Get.toNamed('/sample');
              },
            ),
          ),
          // 이전 화면을 없애고 이동
          Card(
            child: ListTile(
              leading: const Text("Get.off"),
              onTap: () {
                Get.off(const SamplePage());
              },
            ),
          ),
          // 이전 화면을 없애고 지정한 페이지 이름으로 이동
          Card(
            child: ListTile(
              leading: const Text("Get.off"),
              onTap: () {
                Get.offNamed('/sample');
              },
            ),
          ),
          // 전 화면을 모두 없앤 후 이동
          Card(
            child: ListTile(
              leading: const Text("Get.offAll"),
              onTap: () {
                Get.offAll(const SamplePage());
              },
            ),
          ),
          // 전 화면을 모두 없앤 후 지정한 페이지 이름으로 이동
          Card(
            child: ListTile(
              leading: const Text("Get.offAllNamed"),
              onTap: () {
                Get.offAllNamed('/sample');
              },
            ),
          ),
          // 데이터 실
          Card(
            child: ListTile(
              leading: const Text("Send Data"),
              onTap: () {
                Get.toNamed('/getData', arguments: "Hello Mark");
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: const Text("SnackBar"),
              onTap: () {
                Get.snackbar(
                    "안녕",
                    "안녕? 나는 Mark야",
                  icon: const Icon(Icons.alarm_add_rounded)
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: const Text("Get.defaultDialog"),
              onTap: () {
                Get.defaultDialog(
                  title: "Dialog",
                  middleText: "Getx Dialog",
                  textCancel: "취소",
                  textConfirm: "확인",
                  onConfirm: () => print("확인")
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: const Text("Get.dialog"),
              onTap: () {
                Get.dialog(
                  const Center(
                      child: Text("Get.dialog"))
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: const Text("Get.bottomSheet"),
              onTap: () {
                Get.bottomSheet(
                  Container(
                    color: Colors.white,
                    height: Get.height * 0.5,
                    child: const Center(
                        child: Text("Get.bottomSheet")),
                  )
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
