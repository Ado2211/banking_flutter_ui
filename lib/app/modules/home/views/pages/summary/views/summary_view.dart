import 'package:banking_flutter_ui/app/modules/home/views/pages/summary/controllers/summary_controller.dart';
import 'package:banking_flutter_ui/app/modules/home/views/pages/summary/views/widgets/balance.dart';
import 'package:banking_flutter_ui/app/modules/home/views/pages/summary/views/widgets/chart.dart';
import 'package:banking_flutter_ui/app/modules/home/views/pages/summary/views/widgets/top_menu.dart';
import 'package:banking_flutter_ui/app/modules/home/views/pages/summary/views/widgets/weeks_income.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SummaryView extends GetView<SummaryController> {
  SummaryView({super.key});
  final SummaryController controller = Get.put(SummaryController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 30, left: 20, right: 20, bottom: 10),
              child: Column(
                children: [
                  TopMenu(),
                  Balance(),
                  Chart(),
                  WeeksIncome(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
