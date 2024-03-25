import 'package:banking_flutter_ui/app/config/app_colors.dart';
import 'package:banking_flutter_ui/app/modules/home/views/pages/summary/controllers/summary_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TopMenu extends StatelessWidget {
  const TopMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SummaryController>(
      init: SummaryController(),
      builder: (controller) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 30),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColors.lightGrey,
              ),
              constraints: BoxConstraints(maxWidth: Get.width),
              
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  
                  GestureDetector(
                    onTap: () => controller.updateActive('Income'),
                    child: RoundedButton(
                      label: 'Income',
                      isActive: controller.incomeActive,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => controller.updateActive('Expense'),
                    child: RoundedButton(
                      label: 'Expense',
                      isActive: controller.expenseActive,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => controller.updateActive('Balance'),
                    child: RoundedButton(
                      label: 'Balance',
                      isActive: controller.balanceActive,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RoundedButton extends StatelessWidget {
  final String label;
  final RxBool isActive;

  const RoundedButton({
    Key? key,
    required this.label,
    required this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => Padding(
      padding: const EdgeInsets.only(left:2,right:2),
      child: Container(
            padding: EdgeInsets.symmetric(vertical: 13, horizontal: 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(17),
              color: isActive.value ? Colors.white : Colors.transparent,
            ),
            child: Text(
              label,
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color:
                      isActive.value ? AppColors.blackText : AppColors.greyText),
            ),
          ),
    ));
  }
}
