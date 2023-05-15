import 'package:flutter/material.dart';
import 'package:ui_finance_flutter/colors.dart' as color;
import 'package:ui_finance_flutter/widgets/action_section.dart';
import 'package:ui_finance_flutter/widgets/contact_section.dart';
import 'package:ui_finance_flutter/widgets/top_section.dart';
import 'package:ui_finance_flutter/widgets/transaction_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.Colors.backgroundColor,
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: color.Colors.accentColor,
          unselectedItemColor: color.Colors.disebledColor,
          showSelectedLabels: true,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.pie_chart), label: "Report"),
            BottomNavigationBarItem(
                icon: Icon(Icons.bar_chart), label: "Stock"),
            BottomNavigationBarItem(
                icon: Icon(Icons.credit_card), label: "Cards"),
          ]),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            TopSection(),
             ContactSection(),
            SizedBox(
              height: 20,
            ),
            ActionSection(),
            SizedBox(
              height: 20,
            ),
            TransactionSection(),
          ],
        ),
      )),
    );
  }
}
