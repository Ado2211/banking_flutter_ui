import 'package:banking_flutter_ui/app/config/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:banking_flutter_ui/app/modules/home/views/pages/summary/controllers/summary_controller.dart';

class Chart extends StatelessWidget {
  const Chart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Obx(
            () {
              var controller = Get.find<SummaryController>();
              return Stack(
                children: [
                  ChartBackground(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                      controller.values.length,
                      (index) => GestureDetector(
                        onTap: () {
                          controller.selectedIndex.value = index;
                        },
                        child: CustomPaint(
                          size: Size(30, 120),
                          painter: DiagramPainter(
                            value: controller.values[index],
                            isSelected: controller.selectedIndex.value == index,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
        SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'week 1',
              style: TextStyle(
                color: AppColors.greyText,
                fontSize: 12,
              ),
            ),
            Text(
              'week 2',
              style: TextStyle(
                color: AppColors.greyText,
                fontSize: 12,
              ),
            ),
            Text(
              'week 3',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
            Text(
              'week 4',
              style: TextStyle(
                color: AppColors.greyText,
                fontSize: 12,
              ),
            ),
          ],
        )
      ],
    );
  }
}

class DiagramPainter extends CustomPainter {
  final int value;
  final bool isSelected;

  DiagramPainter({required this.value, required this.isSelected});

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = isSelected ? AppColors.black : AppColors.lightGrey
      ..style = PaintingStyle.fill;

    final radius = Radius.circular(7.0); // Adjust the radius as needed
    final rect =
        Rect.fromLTRB(0, size.height - (value * 12), size.width, size.height);

    canvas.drawRRect(
      RRect.fromRectAndRadius(rect, radius),
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class ChartBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
     
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 1,
            color: AppColors.lightGrey,
          ),
          Container(
            height: 1,
            color: AppColors.lightGrey,
          ),
          Container(
            height: 1,
            color: AppColors.lightGrey,
          ),
        ],
      ),
    );
  }
}
