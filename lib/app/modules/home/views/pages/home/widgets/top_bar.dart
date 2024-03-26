import 'package:banking_flutter_ui/app/config/app_colors.dart';
import 'package:banking_flutter_ui/app/data/models/user_model.dart';
import 'package:banking_flutter_ui/app/modules/onboarding/views/widgets/curved_lines.dart';
import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  final UserModel user = UserModel(
    imageUrl: 'assets/images/user_2.jpg',
    firstName: 'Adnan',
    lastName: 'Mahmić',
  );

  TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.black,
      height: 150,
      child: Padding(
        padding: const EdgeInsets.only(top: 60, right: 30, left: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(user.imageUrl),
              radius: 25,
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Good evening',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  Row(
                    children: [
                      Text(
                        '${user.firstName} ',
                        style: TextStyle(
                          color: AppColors.whiteText,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 5),
              child: Stack(
                children: [
                  Icon(Icons.notifications, color: Colors.white),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      width: 5,
                      height: 5,
                      decoration: BoxDecoration(
                        color: AppColors.lightGreen,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
