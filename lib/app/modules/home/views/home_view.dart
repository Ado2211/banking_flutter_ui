
import 'package:banking_flutter_ui/app/modules/home/controllers/home_controller.dart';
import 'package:banking_flutter_ui/app/modules/onboarding/views/widgets/curved_lines.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      
      body: Container(child:Text('hello')
      ),
    );
  }
}
