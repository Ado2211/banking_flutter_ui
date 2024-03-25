import 'package:banking_flutter_ui/app/common/enums/buton_enum.dart';
import 'package:get/get.dart';

class SummaryController extends GetxController {
  final RxBool incomeActive = true.obs;
  final RxBool expenseActive = false.obs;
  final RxBool balanceActive = false.obs;
  var selectedIndex = RxInt(4);
  var values = [5, 3, 7, 3, 10, 6, 2];

  void updateActive(String label) {
    incomeActive.value = label == 'Income';
    expenseActive.value = label == 'Expense';
    balanceActive.value = label == 'Balance';
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
