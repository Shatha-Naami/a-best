import 'package:best/Ui/congratulations_new_account/congratulations_new_account.dart';
import 'package:best/Ui/congratulations_reset_password/congratulations_reset_password.dart';
import 'package:best/Ui/sing_in_email/sing_in_email.dart';
import 'package:best/core/constent.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CreateNewAccount extends StatefulWidget {
  @override
  _CreateNewAccountState createState() => _CreateNewAccountState();
}

class _CreateNewAccountState extends State<CreateNewAccount> {
  bool checkPhoneNum = false;
  bool checkPassword = false;
  bool seePassword = true;
  bool checkEmail = false;
  bool checkPassword1 = false;
  bool seePassword1 = true;
  TextEditingController controller = new TextEditingController();
  TextEditingController controllerPass = new TextEditingController();

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
              margin: EdgeInsets.only(top: 6),
              child: Text(
                'Create a new account',
                textAlign: TextAlign.center,
                style: dataStyle.copyWith(
                    fontWeight: FontWeight.w400, fontSize: 24),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 6),
              child: Text(
                'To give you a better experience we need to know your Gender',
                textAlign: TextAlign.center,
                style: dataStyle.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: 22,
                    color: Color(0xff78849E)),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 32)),
            Card(
              elevation: 0.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              child: TextField(
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.end,
                onChanged: (text) {
                  if (text.contains('@') && text.contains('.')) {
                    setState(() {
                      // val = !val;
                    });
                  }
                },
                decoration: InputDecoration(
                  labelText: 'User Name',
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
                      if (text.length == 9) {
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
            Stack(
              alignment: Alignment.centerRight,
              children: <Widget>[
                Card(
                  elevation: 0.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.end,
                    onChanged: (text) {
                      if (text.contains('@') && text.contains('.')) {
                        setState(() {
                          checkEmail = true;
                        });
                      } else {
                        setState(() {
                          checkEmail = false;
                        });
                      }
                    },
                    decoration: InputDecoration(
                      labelText: 'E-mail Address ',
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
                        visible: checkEmail,
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
            Stack(
              alignment: Alignment.centerRight,
              children: <Widget>[
                Card(
                  elevation: 0.0,
                  child: TextField(
                    keyboardType: TextInputType.visiblePassword,
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.end,
                    controller: controller,
                    onChanged: (text) {
                      controller.text = controller.text;
                      if (text.length >= 6) {
                        setState(() {
                          checkPassword = true;
                        });
                      } else if (text.length < 6) {
                        setState(() {
                          checkPassword = false;
                        });
                      }
                    },
                    obscureText: seePassword,
                    decoration: InputDecoration(
                      labelText: 'password',
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
                        visible: checkPassword,
                        child: Image.asset(
                          'assets/image/check.png',
                          height: 22,
                        ),
                      ),
                      SizedBox(height: 6),
                      (seePassword)
                          ? InkWell(
                              child: Image.asset(
                                'assets/image/show.png',
                                height: 20,
                              ),
                              onTap: () {
                                setState(() {
                                  seePassword = !seePassword;
                                });
                              },
                            )
                          : InkWell(
                              child: Image.asset(
                                'assets/image/eye.png',
                                height: 16,
                              ),
                              onTap: () {
                                setState(() {
                                  seePassword = !seePassword;
                                });
                              },
                            )
                    ],
                  ),
                )
              ],
            ),
            Stack(
              alignment: Alignment.centerRight,
              children: <Widget>[
                Card(
                  elevation: 0.0,
                  child: TextField(
                    keyboardType: TextInputType.visiblePassword,
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.end,
                    controller: controllerPass,
                    onChanged: (text) {
                      controllerPass.text = text.toString();
                      if (text.length >= 6) {
                        setState(() {
                          checkPassword1 = true;
                        });
                      } else if (text.length < 6) {
                        setState(() {
                          checkPassword1 = false;
                        });
                      }
                    },
                    obscureText: seePassword1,
                    decoration: InputDecoration(
                      labelText: 'confirm password',
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
                        visible: checkPassword1,
                        child: Image.asset(
                          'assets/image/check.png',
                          height: 22,
                        ),
                      ),
                      SizedBox(height: 6),
                      (seePassword1)
                          ? InkWell(
                              child: Image.asset(
                                'assets/image/show.png',
                                height: 20,
                              ),
                              onTap: () {
                                setState(() {
                                  seePassword1 = !seePassword1;
                                });
                              },
                            )
                          : InkWell(
                              child: Image.asset(
                                'assets/image/eye.png',
                                height: 16,
                              ),
                              onTap: () {
                                setState(() {
                                  seePassword1 = !seePassword1;
                                });
                              },
                            )
                    ],
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(right: 12, left: 12, top: 16),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'by continuing you agree with the',
                  style: dataStyle.copyWith(
                      color: Color(0xff222B45), fontSize: 20),
                  children: <TextSpan>[
                    new TextSpan(
                        text: ' terms ',
                        style: dataStyle.copyWith(
                            color: greenColor, fontSize: 20)),
                    new TextSpan(
                      text: 'of use and ',
                      style: dataStyle.copyWith(
                          color: Color(0xff222B45), fontSize: 20),
                    ),
                    new TextSpan(
                        text: 'privacy policy.',
                        style: dataStyle.copyWith(
                            color: greenColor, fontSize: 20)),
                  ],
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 12, bottom: 0)),
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
                    'Sign Up',
                    style: dataStyle.copyWith(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.normal),
                  ),
                ),
                onTap: () {
                  print('1 ${controller.text}');
                  print('2 ${controllerPass.text}');
                  if (controller.text == controllerPass.text) {
                    print('done');
                    return Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CongratulationsResetPassword()),
                    );
                  } else {
                    print('re try');
                    return Fluttertoast.showToast(
                        msg: "Password Doesn't Match",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIos: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0);
                  }
//
                }),
            Padding(padding: EdgeInsets.only(top: 12, bottom: 12)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have account ? ',
                  style: titleStyle.copyWith(
                      fontWeight: FontWeight.normal,
                      fontSize: 18,
                      color: Color(0xff222B45)),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignInEmail()),
                    );
                  },
                  child: Text(
                    'Sign in',
                    style: dataStyle.copyWith(color: greenColor, fontSize: 18),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
