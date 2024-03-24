import 'dart:math';
import 'package:banking_flutter_ui/app/config/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobkit_dashed_border/mobkit_dashed_border.dart';

class CurvedLinesBackground extends StatelessWidget {
  const CurvedLinesBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.black,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: SizedBox(
              width: Get.width,
              height: Get.width / 1.8,
              child: Padding(
                padding: const EdgeInsets.only(left: 30, right: 40),
                child: Transform.rotate(
                  angle: pi / 100,

                  child: Container(
                    decoration: const BoxDecoration(
                        border: DashedBorder.fromBorderSide(
                            dashLength: 5,
                            side: BorderSide(
                                color: AppColors.darkerGrey, width: 1)),
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                  ),
                ),
              ),
            ),
          ),
          CustomPaint(
            painter: _CurvedLinesPainter(),
            size: MediaQuery.of(context).size,
          ),
        ],
      ),
    );
  }
}

class _CurvedLinesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color.fromARGB(255, 26, 26, 26)
      ..strokeWidth = 1.0
      ..style = PaintingStyle.stroke;

    final path = Path();
    final start = Offset(size.width, size.height);
    final maxRadius =
        sqrt(size.width * size.width + size.height * size.height) / 3;
    const numberOfCircles = 10;
    double step = 70;
    const stepIncrease = 5;

    for (var i = 0; i < numberOfCircles; i++) {
      final circleRadius = maxRadius - (step * i);
      final circleradiust = circleRadius - 150;
      final startPoint = start.translate(-20, -circleradiust);

      path.addOval(Rect.fromCircle(center: startPoint, radius: circleRadius));
      step -= stepIncrease;
      if (circleRadius <= maxRadius / 2) break;
    }
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
