import 'dart:math';

import 'package:flutter/material.dart';
import 'package:ui_finance_flutter/colors.dart' as color;
import 'package:ui_finance_flutter/widgets/transaction1.dart';

class Transaction {
  String title;
  String amount;
  String date;
  IconData icondata;
  Color color;

  Transaction(this.title, this.amount, this.date, this.icondata, this.color);
}

List<Transaction> transaction() {
  return [
    Transaction("Food", "\$450", "02 Mei 2023", Icons.fastfood,
        color.Colors.orangeColor),
    Transaction("Medicine", "\$4500", "03 Mei 2023", Icons.medical_information,
        color.Colors.greenColor),
    Transaction("Clothes", "\$3500", "04 Mei 2023", Icons.shop,
        color.Colors.accentColor),
    Transaction("Clothes", "\$3500", "04 Mei 2023", Icons.shop,
        color.Colors.accentColor),
    Transaction(
        "House", "\$35060", "04 Mei 2023", Icons.house_rounded, randomColor()),
  ];
}

Color randomColor() {
  return Color(Random().nextInt(0xffffff)).withAlpha(0xff);
}
