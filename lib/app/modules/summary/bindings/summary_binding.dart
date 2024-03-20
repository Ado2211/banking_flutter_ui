import 'package:banking_flutter_ui/app/modules/summary/controllers/summary_controller.dart';
import 'package:get/get.dart';

class SummaryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SummaryController>(
      () => SummaryController(),
    );
  }
}
