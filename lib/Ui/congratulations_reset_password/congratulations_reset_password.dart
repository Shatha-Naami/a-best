import 'package:best/core/constent.dart';
import 'package:flutter/material.dart';

class CongratulationsResetPassword extends StatefulWidget {
  @override
  _CongratulationsResetPasswordState createState() =>
      _CongratulationsResetPasswordState();
}

class _CongratulationsResetPasswordState
    extends State<CongratulationsResetPassword> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'assets/image/tick.png',
                      height: 65,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 22),
                      child: Text(
                        'Congratulations! \n Password reset successfully',
                        textAlign: TextAlign.center,
                        style: dataStyle.copyWith(
                            fontWeight: FontWeight.w400, fontSize: 22),
                      ),
                    ),
                  ],
                )),
            InkWell(
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 3,
                    left: 16,
                    right: 16,
                    bottom: 12),
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
//                Navigator.push(
//                  context,
//                  MaterialPageRoute(builder: (context) => SingInPhone()),
//                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
