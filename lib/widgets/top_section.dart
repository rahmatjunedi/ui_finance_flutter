import 'package:flutter/material.dart';
import 'package:ui_finance_flutter/colors.dart' as color;
import 'package:ui_finance_flutter/mytextstyle.dart';

class TopSection extends StatelessWidget {
  const TopSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: color.Colors.backgroundColor,
          padding: EdgeInsets.all(8.0),
          alignment: Alignment.center,
          height: 250,
        ),
        Container(
          padding: EdgeInsets.all(10),
          alignment: Alignment.topCenter,
          height: 150,
          decoration: BoxDecoration(
            color: color.Colors.accentColor,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Image.asset(
                  "images/man.png",
                  width: 40.0,
                  height: 40.0,
                  alignment: Alignment.topLeft,
                ),
              ),
              Image.asset(
                "images/search.png",
                width: 25.0,
                height: 25.0,
                color: Colors.white,
              ),
              SizedBox(
                width: 20,
              ),
              Image.asset(
                "images/bell.png",
                width: 25,
                height: 25,
                color: Colors.white,
              )
            ],
          ),
        ),
        Positioned(
            top: 80,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 80),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Avalabel Balace",
                            style: MyTextStyles.subTitle1,
                          ),
                          Text(
                            "\$18.154",
                            style: MyTextStyles.headline1,
                          )
                        ],
                      ),
                      CircleAvatar(
                        radius: 20,
                        child: Image.asset("images/usa.png"),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "See More",
                            style: MyTextStyles.subTitle1,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                color:
                                    color.Colors.accentColor.withOpacity(0.2),
                                shape: BoxShape.circle),
                            child: Icon(Icons.arrow_back_ios,
                                size: 8, color: color.Colors.accentColor),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "US Dolar",
                            style: MyTextStyles.subTitle2,
                          ),
                          Icon(Icons.arrow_drop_down)
                        ],
                      )
                    ],
                  )
                ],
              ),
            ))
      ],
    );
  }
}
