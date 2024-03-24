import 'package:banking_flutter_ui/app/modules/home/views/pages/summary/controllers/summary_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SummaryView extends GetView<SummaryController> {
  const SummaryView({super.key});

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          SingleChildScrollView( 
            child: Column(
              children: [
                Chart(),
              
              ],
            ),
          ),
        ],
      ),
    );
  }
}
