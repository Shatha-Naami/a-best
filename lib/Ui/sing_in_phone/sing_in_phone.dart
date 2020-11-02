import 'package:best/Ui/create_new_account/create_new_account.dart';
import 'package:best/Ui/verify_number/verify_number.dart';
import 'package:best/core/constent.dart';
import 'package:flutter/material.dart';

class SingInPhone extends StatefulWidget {
  @override
  _SingInPhoneState createState() => _SingInPhoneState();
}

class _SingInPhoneState extends State<SingInPhone> {
  bool checkPhoneNum = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height / 5,
              bottom: 24,
              left: 15,
              right: 15),
          children: [
            Container(
              child: Text(
                'You’re all set!',
                style: titleStyle,
              ),
              margin: EdgeInsets.only(bottom: 6),
            ),
            Container(
              margin: EdgeInsets.only(top: 6),
              child: Text(
                'let’s create',
                style: dataStyle,
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 25),
              child: Text(
                'your account',
                style: dataStyle,
              ),
            ),
            Stack(
              alignment: Alignment.centerRight,
              children: <Widget>[
                Card(
                  elevation: 0.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.end,
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
                      //    counterText: "00",
                      prefixIcon: new Padding(
                        padding: const EdgeInsets.only(
                            top: 0, left: 8, right: 8, bottom: 0),
                        child: new SizedBox(
                          height: 4,
                          child: Image.asset(
                            'assets/image/country.png',
                            width: 80,
                            // height: 12,
                          ),
                        ),
                      ),
                      //  suffixText: "666",
                      contentPadding: new EdgeInsets.symmetric(
                          vertical: 18.0, horizontal: 12.0),
                      border: InputBorder.none,
                      fillColor: Colors.grey[100],
                      filled: true,
                      labelStyle: dataStyle.copyWith(
                          height: 1, color: titleColor, fontSize: 18),
                      hintStyle: dataStyle.copyWith(
                          height: 4, color: Colors.red, fontSize: 16),
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
                margin: EdgeInsets.only(top: 25),
                decoration: BoxDecoration(
                  color: greenColor,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                height: 50,
                child: Text(
                  'Sign in',
                  style: dataStyle.copyWith(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.normal),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => VerifyNumber()),
                );
              },
            ),
            Padding(
              padding: EdgeInsets.only(top: 26, bottom: 26),
              child: Text(
                'or Social Network',
                textAlign: TextAlign.center,
                style: titleStyle.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Color(0xff222B45)),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  child: Container(
                    width: 145,
                    height: 55,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 2), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/image/gmail.png',
                          width: 20,
                          height: 20,
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Text(
                          'Gmail',
                          textAlign: TextAlign.right,
                          style: dataStyle.copyWith(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    print('mobile');
                  },
                ),
                InkWell(
                  child: Container(
                    width: 145,
                    height: 55,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 2), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/image/google.png',
                          width: 20,
                          height: 20,
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Text(
                          'Googel',
                          textAlign: TextAlign.right,
                          style: dataStyle.copyWith(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    print('google');
                  },
                )
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 32, bottom: 12)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have account ? ',
                  style: titleStyle.copyWith(
                      fontWeight: FontWeight.normal, fontSize: 18),
                ),
                InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CreateNewAccount()),
                      );
                    },
                    child: Text(
                      'Sign Up',
                      style:
                          dataStyle.copyWith(color: greenColor, fontSize: 18),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
