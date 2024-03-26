import 'package:banking_flutter_ui/app/config/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:mobkit_dashed_border/mobkit_dashed_border.dart';

class MoneyWidget extends StatelessWidget {
  const MoneyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Send Money',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'View all',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 25),
          Row(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      const SizedBox(width: 20),
                      Container(
                        width: 48,
                        height: 48,
                        decoration: const BoxDecoration(
                         
                          border: DashedBorder.fromBorderSide(
                            side: BorderSide(
                               color: AppColors.lightGrey,
                              width: 1.2,
                            ),
                            dashLength: 3,
 
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(25))
                        ),
                        child: Icon(
                          Icons.add,
                          size: 25,
                          color: AppColors.blackText,
                        ),
                      ),
                      const SizedBox(width: 8),
                      for (var i = 0; i < 6; i++)
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/user_${i + 1}.jpg'),
                            radius: 25,
                          ),
                        ),
                      for (var i = 0; i < 6; i++)
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/user_${i + 1}.jpg'),
                            radius: 25,
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
