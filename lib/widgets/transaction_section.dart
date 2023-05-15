import 'package:flutter/material.dart';
import 'package:ui_finance_flutter/colors.dart' as color;
import 'package:ui_finance_flutter/mytextstyle.dart';
import 'package:ui_finance_flutter/widgets/transaction1.dart';

class TransactionSection extends StatelessWidget {
  const TransactionSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Transaction",
                style: MyTextStyles.headline1,
              ),
              Text(
                "See All",
                style: MyTextStyles.subTitle1,
              ),
              SizedBox()
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 300,
            margin: EdgeInsets.only(bottom: 20),
            padding: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                color: Colors.white24, borderRadius: BorderRadius.circular(20)),
            child: ListView.builder(
                padding: EdgeInsets.symmetric(vertical: 10),
                itemCount: transaction().length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color:
                                  transaction()[index].color.withOpacity(0.3),
                              shape: BoxShape.circle),
                          child: Icon(
                            transaction()[index].icondata,
                            color: transaction()[index].color,
                            size: 19,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              transaction()[index].title,
                              style: MyTextStyles.bodyText,
                            ),
                            Text(
                              transaction()[index].date,
                              style: MyTextStyles.bodyText,
                            )
                          ],
                        )),
                        Text(
                          transaction()[index].amount,
                          style: MyTextStyles.bodyText,
                        )
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
