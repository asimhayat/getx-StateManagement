import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/page/home_page.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About Page"),
      ),
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                // Get.offAll(HomeScreen());
                Get.to(const HomeScreen());
              },
              child: const Text("Go To HomePage"))),
    );
  }
}
