import 'package:get/get.dart';

class NavController extends GetxController {
  int selectedIndex = 0;

  void changeIndex(int index) {
    selectedIndex = index;
    update(); // refresh UI when using GetBuilder
  }
}
