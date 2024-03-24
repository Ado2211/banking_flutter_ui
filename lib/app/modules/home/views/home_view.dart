import 'package:banking_flutter_ui/app/modules/home/controllers/home_controller.dart';
import 'package:banking_flutter_ui/app/modules/home/views/pages/home/home_page.dart';
import 'package:banking_flutter_ui/app/modules/home/views/pages/summary/views/summary_view.dart';
import 'package:banking_flutter_ui/app/modules/home/views/widgets/bottom_bar.dart';
import 'package:banking_flutter_ui/app/modules/onboarding/views/onboarding_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        switch (controller.selectedIndex.value) {
          case 0:
            return HomePage();
          case 1:
            return SummaryView();
          case 2:
            return OnboardingView();
          case 3:
            return HomePage();
          default:
            return HomePage();
        }
      }),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
