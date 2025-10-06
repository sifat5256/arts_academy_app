
import 'package:get/get.dart';


class CurriculumController extends GetxController {
  final RxInt expandedIndex = (-1).obs;

  void toggleSection(int index) {
    expandedIndex.value = expandedIndex.value == index ? -1 : index;
    update(); // for GetBuilder
  }
}