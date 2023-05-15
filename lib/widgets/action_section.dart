import 'package:flutter/material.dart';
import 'package:ui_finance_flutter/colors.dart' as color;
import 'package:ui_finance_flutter/mytextstyle.dart';

class ActionSection extends StatelessWidget {
  const ActionSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ActionItem(
              title: "Add Money",
              icon: Icons.add,
              color: color.Colors.accentColor),
          ActionItem(
              title: "Send Money",
              icon: Icons.credit_card_off_outlined,
              color: color.Colors.orangeColor),
          ActionItem(
              title: "More",
              icon: Icons.dashboard_customize_outlined,
              color: color.Colors.accentColor)
        ],
      ),
    );
  }
}

class ActionItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;

  ActionItem({required this.title, required this.icon, required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
              color: color.withOpacity(0.2),
              borderRadius: BorderRadius.circular(30)),
          child: Icon(
            icon,
            color: color,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          title,
          style: MyTextStyles.bodyText2,
        )
      ],
    );
  }
}
