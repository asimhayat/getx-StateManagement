import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/app_controller.dart';
import 'package:getx/page/about_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AppController appController = Get.put(AppController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Get.snackbar(
                        snackPosition: SnackPosition.BOTTOM,
                        "Successfully Completed",
                        "Congrats on getting first position");
                  },
                  child: const Text("Snack Bar"),
                ),
                const SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                    onPressed: () {
                      Get.defaultDialog(
                        title: "Alert",
                        content: const Column(
                          children: [
                            Text("Do You want to Permanently Delete"),
                          ],
                        ),
                      );
                    },
                    child: const Text("Dialog Bar")),
                ElevatedButton(
                  onPressed: () {
                    Get.to(const AboutPage());
                  },
                  child: const Text("Go To Next Page"),
                ),
                IconButton(
                  onPressed: () {
                    appController.increase();
                  },
                  icon: const Icon(Icons.add),
                ),
                Obx(
                  () => Text(appController.n.toString()),
                ),
                IconButton(
                  onPressed: () {
                    appController.decrease();
                  },
                  icon: const Icon(Icons.arrow_back),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
