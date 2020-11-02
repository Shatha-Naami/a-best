import 'package:best/Ui/congratulations_reset_password/congratulations_reset_password.dart';
import 'package:best/core/constent.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ResetPassword extends StatefulWidget {
  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  bool checkPassword = false;
  bool seePassword = true;
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
                'Password Reset',
                textAlign: TextAlign.center,
                style: dataStyle.copyWith(
                    fontWeight: FontWeight.w400, fontSize: 24),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 6),
              child: Text(
                'Enter the new password below',
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
                  child: TextField(
                    keyboardType: TextInputType.visiblePassword,
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.end,
                    controller: controller,
                    onChanged: (text) {
                      controller.text=controller.text;
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


//            Card(
//              elevation: 0.0,
//              child: TextField(
//                textDirection: TextDirection.rtl,
//                textAlign: TextAlign.end,
//                onChanged: (text) {
//                  if (text.contains('@') && text.contains('.')) {
//                    setState(() {
//                      //  val = !val;
//                    });
//                  }
//                },
//                decoration: InputDecoration(
//                  labelText: 'password',
//                  contentPadding: new EdgeInsets.symmetric(
//                      vertical: 18.0, horizontal: 12.0),
//                  border: InputBorder.none,
//                  fillColor: Colors.white,
//                  filled: true,
//                  labelStyle: dataStyle.copyWith(
//                      height: 1, color: titleColor, fontSize: 18),
//                  hintStyle: dataStyle.copyWith(
//                      height: 5, color: Colors.red, fontSize: 16),
//                ),
//              ),
//            ),
//            Card(
//              elevation: 0.0,
//              child: TextField(
//                textDirection: TextDirection.rtl,
//                textAlign: TextAlign.end,
//                onChanged: (text) {
//                  if (text.contains('@') && text.contains('.')) {
//                    setState(() {
//                      //  val = !val;
//                    });
//                  }
//                },
//                decoration: InputDecoration(
//                  labelText: 'confirm password',
//                  contentPadding: new EdgeInsets.symmetric(
//                      vertical: 18.0, horizontal: 12.0),
//                  border: InputBorder.none,
//                  fillColor: Colors.white,
//                  filled: true,
//                  labelStyle: dataStyle.copyWith(
//                      height: 1, color: titleColor, fontSize: 18),
//                  hintStyle: dataStyle.copyWith(
//                      height: 5, color: Colors.red, fontSize: 16),
//                ),
//              ),
//            ),
            InkWell(
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 40),
                decoration: BoxDecoration(
                  color: greenColor,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                height: 50,
                child: Text(
                  'Password Reset',
                  style: dataStyle.copyWith(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.normal),
                ),
              ),
              onTap: () {
                print('1 ${controller.text}');
                print('2 ${controllerPass.text}');
                if(controller.text == controllerPass.text){
                  print('done');
                  return Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CongratulationsResetPassword()),
                  );
                }else{

                  print('re try');
                  return  Fluttertoast.showToast(
                      msg: "Password Doesn't Match",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIos: 1,
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                      fontSize: 16.0
                  );
                }
//
              },
            ),
          ],
        ),
      ),
    );
  }
}