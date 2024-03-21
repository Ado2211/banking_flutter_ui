import 'package:banking_flutter_ui/app/config/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VisaCard extends StatelessWidget {
  const VisaCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      width: Get.width,
      height: Get.width / 1.8,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: AppColors.darkerGrey),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 60,
            right: 0,
            child: Container(
              width: 1, 
              height: 1, 
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.black, 
                boxShadow: [
                  BoxShadow(
                    color:
                        AppColors.lightGreen.withOpacity(0.12), 
                    spreadRadius: 100, 
                    blurRadius: 200, 
                    offset: const Offset(0, 0), 
                  ),
                ],
              ),
            ),
          ),
          const Positioned(
            top: 0,
            right: 0,
            child: Text(
              'VISA',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'VisaFont', 
                color: AppColors.greyText,
              ),
            ),
          ),
          const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50),
                Text(
                  'ADNAN MAHMIC',
                  style: TextStyle(
                    fontFamily: 'OCRB',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: AppColors.darkerGrey,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  '**** **** **** 7484',
                  style: TextStyle(
                    fontFamily: 'OCRB',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColors.greyText,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Exp',
                      style: TextStyle(
                        fontFamily: 'OCRB',
                        fontSize: 14,
                        color: AppColors.darkerGrey,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      '03/25',
                      style: TextStyle(
                        fontFamily: 'OCRB',
                        fontSize: 14,
                        color: AppColors.greyText,
                      ),
                    ),
                    SizedBox(width: 25),
                    Text(
                      'CVV',
                      style: TextStyle(
                        fontFamily: 'OCRB',
                        fontSize: 14,
                        color: AppColors.darkerGrey,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      '898',
                      style: TextStyle(
                        fontFamily: 'OCRB',
                        fontSize: 14,
                        color: AppColors.greyText,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
