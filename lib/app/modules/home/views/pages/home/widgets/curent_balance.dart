import 'dart:math';

import 'package:banking_flutter_ui/app/config/app_colors.dart';
import 'package:flutter/material.dart';

class BalanceWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Current Balance',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '\$45,882',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '.00',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.grey,
                          height: 1.7,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: AppColors.lightGrey, width: 1.5),
                  ),
                  child: Transform.rotate(
                    angle: -pi / 2, // Rotira ikonu za 90 stupnjeva u lijevo
                    child: Icon(
                      Icons.more_vert_sharp,
                      color: AppColors.blackText,
                      size: 30,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RoundedButton(
                color: Colors.transparent,
                icon: Icons.send,
                label: 'Send',
                border: Border.all(color: AppColors.lightGrey, width: 1.5),
                iconAngle: -pi / 3,
              ),
              SizedBox(width: 12),
              RoundedButton(
                color: AppColors.lightGreen,
                icon: Icons.add,
                label: 'Add',
                border: Border.all(color: AppColors.lightGreen),
                iconAngle: 0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class RoundedButton extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String label;
  final BoxBorder border;
  final double iconAngle;

  const RoundedButton({
    Key? key,
    required this.color,
    required this.icon,
    required this.label,
    required this.border,
    required this.iconAngle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: color,
          border: border,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Transform.rotate(
              angle: iconAngle,
              child: Icon(icon, color: AppColors.blackText),
            ),
            const SizedBox(width: 0),
            Text(
              label,
              style: TextStyle(
                  color: AppColors.blackText,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
