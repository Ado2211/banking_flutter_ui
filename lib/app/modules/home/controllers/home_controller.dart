import 'package:get/get.dart';

class HomeController extends GetxController {
   var selectedIndex = 0.obs;

  void updateSelectedIndex(int index) {
    selectedIndex.value = index;
  }

  @override
  void onInit() {
    super.onInit();
  }

 
}