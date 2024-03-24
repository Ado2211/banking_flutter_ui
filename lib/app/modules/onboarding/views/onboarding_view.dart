import 'dart:math';
import 'package:banking_flutter_ui/app/config/app_colors.dart';
import 'package:banking_flutter_ui/app/modules/onboarding/controllers/onboarding_controller.dart';
import 'package:banking_flutter_ui/app/modules/onboarding/views/widgets/curved_lines.dart';
import 'package:banking_flutter_ui/app/modules/onboarding/views/widgets/visa_card.dart';
import 'package:banking_flutter_ui/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const CurvedLinesBackground(),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 20, top: 70),
                child: Transform.rotate(
                  angle: -pi / 25, // Rotira za 45 stepeni ulevo (u radijanima)
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: const VisaCard(),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 80, left: 25, right: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Keep all \nexchanges \ntogether',
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: AppColors.whiteText,
                        height: 1.1,
                        letterSpacing: 2,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 40),
                      child: Text(
                        'Use wallet safely for your daily transaction and keep logs. Stay updated with all kind of transactions to make things easier.',
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColors.greyText,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 40,
            left: 15,
            right: 15,
            child: SizedBox(
              width: Get.width,
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  Get.toNamed(Routes.HOME);
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  backgroundColor: AppColors.lightGreen,
                ),
                child: const Text(
                  'Get started',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppColors.blackText),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
