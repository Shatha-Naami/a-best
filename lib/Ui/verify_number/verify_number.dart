import 'package:best/Ui/verify_mobile_code/verify_mobile_code.dart';
import 'package:best/core/constent.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class VerifyNumber extends StatefulWidget {
  @override
  _VerifyNumberState createState() => _VerifyNumberState();
}

class _VerifyNumberState extends State<VerifyNumber> {
  bool checkPhoneNum = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          padding: EdgeInsets.only(top: 24, bottom: 24, left: 15, right: 15),
          children: <Widget>[
            InkWell(
              child: Container(
                alignment: Alignment.topLeft,
                child: Icon(
                  Icons.arrow_back,
                  color: Color(0xff454F63),
                  size: 30,
                ),
              ),
              onTap: () {
                if (Navigator.canPop(context)) {
                  Navigator.pop(context);
                } else {
                  SystemNavigator.pop();
                }
              },
            ),
            Container(
              margin: EdgeInsets.only(top: 32),
              child: Text(
                'Enter your phone number',
                textAlign: TextAlign.center,
                style: dataStyle.copyWith(
                    fontWeight: FontWeight.w400, fontSize: 24),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 6),
              child: Text(
                'we will text a code to verify your phone number',
                textAlign: TextAlign.center,
                style: dataStyle.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: 22,
                    color: Color(0xff78849E)),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 90),
            ),
            Stack(
              alignment: Alignment.centerRight,
              children: <Widget>[
                Card(
                  elevation: 0.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  child: TextField(
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.end,
                    keyboardType: TextInputType.phone,
                    onChanged: (text) {
                      if (text.length==9) {
                        setState(() {
                          checkPhoneNum = true;
                        });
                      } else {
                        setState(() {
                          checkPhoneNum = false;
                        });
                      }
                    },
                    decoration: InputDecoration(
                      labelText: 'Phone Number',
                      contentPadding: new EdgeInsets.symmetric(
                          vertical: 18.0, horizontal: 12.0),
                      border: InputBorder.none,
                      fillColor: Colors.grey[100],
                      filled: true,
                      labelStyle: dataStyle.copyWith(
                          height: 1, color: titleColor, fontSize: 18),
                      hintStyle: dataStyle.copyWith(
                          height: 5, color: Colors.red, fontSize: 16),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Visibility(
                        visible: checkPhoneNum,
                        child: Image.asset(
                          'assets/image/check.png',
                          height: 22,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            InkWell(
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 6),
                decoration: BoxDecoration(
                  color: greenColor,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                height: 50,
                child: Text(
                  'Verify Number',
                  style: dataStyle.copyWith(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.normal),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => VerifyMobileCode()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
