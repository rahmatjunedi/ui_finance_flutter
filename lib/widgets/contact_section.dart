import 'package:flutter/material.dart';
import 'package:ui_finance_flutter/colors.dart' as color;
import 'package:ui_finance_flutter/contacts1.dart';
import 'package:ui_finance_flutter/mytextstyle.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20),
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: color.Colors.accentColor, shape: BoxShape.circle),
            child: Image.asset(
              "images/search.png",
              color: Colors.white,
              width: 20,
              height: 20,
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Container(
            height: 40,
            width: 2,
            color: color.Colors.disebledColor.withOpacity(0.3),
          ),
          Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: contacts().length,
                  padding: EdgeInsets.symmetric(horizontal: 5 ),
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.only(right: 10, left: 10),
                      child: Column(
                        children: [
                          ClipOval(
                            child: Image.asset(
                              contacts()[index].imageLink,
                              fit: BoxFit.cover,
                              width: 40,
                              height: 40,
                            ),
                          ),
                          Text(
                            contacts()[index].name,
                            style: MyTextStyles.bodyText2,
                          )
                        ],
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}
