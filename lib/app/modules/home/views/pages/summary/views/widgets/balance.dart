import 'package:banking_flutter_ui/app/config/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Balance extends StatelessWidget {
  const Balance({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedOption = 'month'.obs;
    return Padding(
      padding: const EdgeInsets.only(top: 30.0, left: 2.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Balance',
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
                        '\$1,882',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '.35',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.grey,
                          height: 1.7,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 228, 255, 230),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 13),
                      child: Row(
                        children: [
                          Text(
                            "Max:",
                            style: TextStyle(
                              color: const Color.fromARGB(255, 1, 153, 6),
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            "+\$399.99",
                            style: TextStyle(
                              color: const Color.fromARGB(255, 1, 153, 6),
                              fontSize: 13,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 60),
                child: MaterialButton(
                  onPressed: () async {
                    final result = await Get.defaultDialog<String>(
                      title: 'Choose period',
                      content: Column(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Get.back(result: 'week');
                            },
                            child: Text('week'),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Get.back(result: 'month');
                            },
                            child: Text('month'),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Get.back(result: 'year');
                            },
                            child: Text('year'),
                          ),
                        ],
                      ),
                    );
                    if (result != null) {
                      selectedOption.value = result;
                    }
                  },
                  color: Colors.transparent,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    side: BorderSide(color: AppColors.lightGrey, width: 1.5),
                  ),
                  minWidth: 0,
                  height: 45,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        selectedOption.value,
                        style: TextStyle(color: Colors.black),
                      ),
                      Icon(Icons.keyboard_arrow_down_rounded)
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
