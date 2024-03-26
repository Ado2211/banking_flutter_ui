import 'package:banking_flutter_ui/app/config/app_colors.dart';
import 'package:flutter/material.dart';

class WeeksIncome extends StatelessWidget {
  const WeeksIncome({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 25.0, left: 2.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Week 3',
                style: TextStyle(
                  color: Color(0xFF5400DD),
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(width: 5),
              Text(
                '·',
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(width: 5),
              Text(
                'April 28,2024',
                style: TextStyle(
                  color: AppColors.greyText,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Text(
                        'Income:',
                        style: TextStyle(
                          fontSize: 18,
                          color: AppColors.blackText,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                      const Text(
                        ' \$399',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: AppColors.blackText,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    '32 transactions',
                    style: TextStyle(
                      color: AppColors.greyText,
                    ),
                  ),
                ],
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: AppColors.lightGrey, width: 1.5),
                  ),
                  child: Icon(
                    Icons.arrow_right_alt_rounded,
                    color: AppColors.blackText,
                    size: 30,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 13),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 240, 240, 240),
                  borderRadius: BorderRadius.circular(30)),
              height: 140,
              child: Column(
                children: [
                  Row(
                    children: [
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, right: 13),
                        child: Container(
                          width: 20, // Širina kontejnera
                          height: 20, // Visina kontejnera
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.darkGrey,
                          ),
                          child:
                              Icon(Icons.cancel, color: Colors.white, size: 20),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                             left: 20, bottom: 0, right: 18),
                        child: Row(
                          children: [
                            Transform.rotate(
                              angle:
                                  -0.2, // Rotacijski kut u radijanima (u ovom slučaju, rotacija ulijevo)
                              child: Container(
                                width: 55,
                                height: 55,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  color: Color.fromARGB(255, 187, 241, 8),
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.account_balance_wallet_outlined,
                                    size: 25,
                                    color: AppColors.darkerGrey, // Boja ikone
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Update',
                            style: TextStyle(
                              fontSize: 16,
                              color: AppColors.blackText,
                              fontWeight: FontWeight.bold,
                              
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Transaction are more secured \n with the updated version.',
                            style: TextStyle(
                              fontSize: 14,
                              color: AppColors.greyText,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 13),
          Row(
            children: [
              Text(
                'Week 1',
                style: TextStyle(
                  color: Color(0xFF5400DD),
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(width: 5),
              Text(
                '·',
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(width: 5),
              Text(
                'April 8,2024',
                style: TextStyle(
                  color: AppColors.greyText,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
