import 'package:best/Ui/create_new_account/create_new_account.dart';
import 'package:best/Ui/reset_password/reset_password.dart';
import 'package:best/Ui/sing_in_phone/sing_in_phone.dart';
import 'package:best/core/constent.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignInEmail extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInEmail> {
  final _formKey = GlobalKey<FormState>();
  bool valEx = false;

  bool checkPassword = false;
  bool seePassword = true;
  bool checkEmail = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
//        backgroundColor: Colors.grey[200],
        body: ListView(
          padding: EdgeInsets.only(top: 70, bottom: 24, left: 15, right: 15),
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
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.end,
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.emailAddress,

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
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.end,
                    onChanged: (text) {
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
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.visiblePassword,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Checkbox(
                      value: valEx,
                      activeColor: greenColor,
                      onChanged: (val) {
                        setState(() {
                          valEx = !valEx;
                        });
                      },
                    ),
                    Container(
                      child: Text(
                        'Remember me',
                        style: dataStyle.copyWith(fontSize: 14),
                      ),
                    )
                  ],
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ResetPassword()),
                    );
                  },
                  child: Text(
                    'Forgot your password?',
                    style: dataStyle.copyWith(color: Colors.red, fontSize: 16),
                  ),
                ),
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
                  MaterialPageRoute(builder: (context) => SingInPhone()),
                );
              },
            ),
            Padding(
              padding: EdgeInsets.only(top: 26, bottom: 26),
              child: Text(
                'or Sign in with',
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
                          style: dataStyle.copyWith(fontSize: 16,),
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
