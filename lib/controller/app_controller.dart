import 'package:get/get.dart';

class AppController extends GetxController {
  RxInt n = 0.obs;
  // RxBool isSet = true.obs;
  // RxString name = "".obs;
  // RxDouble result = 0.0.obs;

  void increase() {
    n++;
  }

  void decrease() {
    n--;
  }
}
