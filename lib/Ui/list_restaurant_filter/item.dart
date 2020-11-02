import 'package:best/core/constent.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardIcon extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final String text5;
  final String text6;
  final Function action;
  final Color color;

  CardIcon(
      {this.text1,
      this.text4,
      this.text3,
      this.text2,
      this.text5,
      this.text6,
      this.action,
      this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 3,
          color: Colors.grey[200],
        ),
        InkWell(
          onTap: action,
          child: Container(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 8, right: 8),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(text1),
                    radius: 35.0,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10, bottom: 5),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        text2,
                        style: dataStyle.copyWith(fontSize: 19),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(bottom: 10),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          text3,
                          style: dataStyle.copyWith(
                              fontSize: 15, color: titleColor),
                        )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 85,
                          height: 25,
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.all(Radius.circular(16)),
                          ),
                          child: Text(
                            text4,
                            style: titleStyle.copyWith(
                                color: greenColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w100),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5, right: 5),
                          alignment: Alignment.center,
                          width: 50,
                          height: 25,
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.all(Radius.circular(16)),
                          ),
                          child: Text(
                            text5,
                            style: titleStyle.copyWith(
                                color: Color(0xff665EFF),
                                fontSize: 13,
                                fontWeight: FontWeight.w100),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 50,
                          height: 25,
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.all(Radius.circular(16)),
                          ),
                          child: Text(
                            '\$\$\$\$',
                            style: titleStyle.copyWith(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w100),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, right: 10),
                  width: 50,
                  height: 25,
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.white,
                        size: 18,
                      ),
                      Text(
                        text6,
                        style: dataStyle.copyWith(
                            color: Colors.white, fontSize: 15),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
