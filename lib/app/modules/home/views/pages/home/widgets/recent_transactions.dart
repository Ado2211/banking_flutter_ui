import 'package:banking_flutter_ui/app/config/app_colors.dart';
import 'package:banking_flutter_ui/app/data/models/transaction_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
// Zamijenite "your_project_name" sa imenom vašeg projekta i putanjom do modela

class RecentTransactions extends StatelessWidget {
  const RecentTransactions({Key? key});

  @override
  Widget build(BuildContext context) {
    List<Transactions> people = [
      Transactions(
        name: 'Katrine',
        imageUrl: 'assets/images/user_4.jpg',
        date: DateTime(2024, 3, 24),
        amount: -150.00,
      ),
      Transactions(
        name: 'Andrew',
        imageUrl: 'assets/images/user_3.jpg',
        date: DateTime(2024, 3, 24),
        amount: 48.87,
      ),
      Transactions(
        name: 'John',
        imageUrl: 'assets/images/user_2.jpg',
        date: DateTime(2024, 3, 24),
        amount: 15.00,
      ),
      Transactions(
        name: 'Adnan',
        imageUrl: 'assets/images/user_1.jpg',
        date: DateTime(2024, 3, 24),
        amount: -200.00,
      ),
      
    ];

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recent Transactions',
                  style: TextStyle(
                    fontSize: 20.0,
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
          SizedBox(height: 10),
          ...List.generate(
            people.length,
            (index) => PersonCard(person: people[index]),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}

class PersonCard extends StatelessWidget {
  final Transactions person;
 PersonCard({Key? key, required this.person}) : super(key: key);
  final DateFormat _dateFormat = DateFormat('MMMM d, yyyy');

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.greyBg,
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
        leading: CircleAvatar(
        backgroundImage: AssetImage(person.imageUrl),
        radius: 25, // Prilagodite veličinu CircleAvatara po potrebi
      ),
        title: Text(person.name,
            style: TextStyle(
              fontWeight: FontWeight.bold,height:2
            )),
        subtitle: Text(_dateFormat.format(person.date),style: TextStyle(color:AppColors.greyText)),
        trailing: Text(
        '${person.amount < 0 ? "-" : "+"}\$${person.amount.abs().toStringAsFixed(2)}',
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w900,
          color: person.amount < 0 ? Colors.red : Colors.green, // Postavite crvenu boju za negativne iznose i zelenu boju za pozitivne iznose
        ),
      ),
      ),
    );
  }
}
