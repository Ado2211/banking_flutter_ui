import 'package:banking_flutter_ui/app/modules/home/controllers/home_controller.dart';
import 'package:banking_flutter_ui/app/modules/home/views/pages/home/widgets/curent_balance.dart';
import 'package:banking_flutter_ui/app/modules/home/views/pages/home/widgets/recent_transactions.dart';
import 'package:banking_flutter_ui/app/modules/home/views/pages/home/widgets/send_money.dart';
import 'package:banking_flutter_ui/app/modules/home/views/pages/home/widgets/top_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          SingleChildScrollView( 
            child: Column(
              children: [
                TopBar(),
                BalanceWidget(),
                MoneyWidget(),
                RecentTransactions(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
