import 'package:best/Ui/list_restaurant/list_restaurant_page.dart';
import 'package:best/core/constent.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:timer_count_down/timer_controller.dart';
import 'package:timer_count_down/timer_count_down.dart';

class VerifyMobileCode extends StatefulWidget {
  @override
  _VerifyMobileCodeState createState() => _VerifyMobileCodeState();
}

class _VerifyMobileCodeState extends State<VerifyMobileCode> {
  final CountdownController controller = CountdownController();

  bool _isPause = true;
  bool _isRestart = false;
  bool show =false;
  bool show1 =false;
  bool show2 =false;
  bool show3 =false;



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
                'Verify Mobile Number',
                textAlign: TextAlign.center,
                style: dataStyle.copyWith(
                    fontWeight: FontWeight.w400, fontSize: 24),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 6),
              child: Text(
                'enter the code we just sent you on your mobile  +970594095950',
                textAlign: TextAlign.center,
                style: dataStyle.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: 21,
                    color: Color(0xff78849E)),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 80),
            ),
            Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 50,
                        color: Colors.grey[100],
//                      decoration: BoxDecoration(
//                          color: Colors.grey[100],
//                          borderRadius: BorderRadius.all(Radius.circular(55))),
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: <Widget>[
                            TextField(
                              textInputAction: TextInputAction.done,
                              keyboardType: TextInputType.number,
                              onTap: () {
                                setState(() {
                                  show = true;
                                });
                              },
                              onChanged: (txt) {
                                if (txt.length == 1) {
                                  FocusScope.of(context).nextFocus();
                                  setState(() {
                                    show1 = true;
                                  });
                                }
                                if(show){
                                  setState(() {
                                    show = !show;
                                  });
                                }
                              },
                              style: dataStyle.copyWith(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 24,
                                  color: Colors.black),
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(border: InputBorder.none),
                            ),



                                 Visibility(
                                   visible: show,
                                   child: Container(
                                    height: 4,
                                    width: 50,
                                    color: greenColor,
                                    alignment: Alignment.bottomCenter,
                                ),
                                 ),


                          ],
                        ),
                      ),

                    SizedBox(
                      width: 20,
                    ),

                    Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 50,
                      color: Colors.grey[100],
//                      decoration: BoxDecoration(
//                          color: Colors.grey[100],
//                          borderRadius: BorderRadius.all(Radius.circular(55))),
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: <Widget>[
                          TextField(
                            textInputAction: TextInputAction.done,
                            keyboardType: TextInputType.number,
//                            onTap: () {
//                              setState(() {
//                                show1 = true;
//                              });
//                            },
                            onChanged: (txt) {
                              if (txt.length == 1) {

                                FocusScope.of(context).nextFocus();
                                setState(() {
                                  show2 = true;
                                });
                              }
                              if(show1){
                                setState(() {
                                  show1 = false;
                                });
                              }
                            },
                            style: dataStyle.copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: 24,
                                color: Colors.black),
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(border: InputBorder.none),
                          ),



                          Visibility(
                            visible: show1,
                            child: Container(
                              height: 4,
                              width: 50,
                              color: greenColor,
                              alignment: Alignment.bottomCenter,
                            ),
                          ),


                        ],
                      ),
                    ),
//                    Container(
//                      alignment: Alignment.center,
//                      height: 50,
//                      width: 50,
//                      color: Colors.grey[100],
////                      decoration: BoxDecoration(
////                          color: Colors.white,
////                          borderRadius: BorderRadius.all(Radius.circular(55))),
//                      child: TextField(
//                        onTap: () {
//                          setState(() {
//                            show1 = true;
//                          });
//                        },
//                        textInputAction: TextInputAction.done,
//                        keyboardType: TextInputType.number,
//                        onChanged: (txt) {
//                          if (txt.length == 1) {
//                            FocusScope.of(context).nextFocus();
//                          }
//                        },
//                        style: dataStyle.copyWith(
//                            fontWeight: FontWeight.w400,
//                            fontSize: 24,
//                            color: Colors.black),
//                        textAlign: TextAlign.center,
//                        decoration: InputDecoration(border: InputBorder.none),
//                      ),
//                    ),
                    SizedBox(
                      width: 20,
                    ),

                    Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 50,
                      color: Colors.grey[100],
//                      decoration: BoxDecoration(
//                          color: Colors.grey[100],
//                          borderRadius: BorderRadius.all(Radius.circular(55))),
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: <Widget>[
                          TextField(
                            textInputAction: TextInputAction.done,
                            keyboardType: TextInputType.number,
//                            onTap: () {
//                              setState(() {
//                                show2 = true;
//                              });
//                            },
                            onChanged: (txt) {
                              if (txt.length == 1) {
                                FocusScope.of(context).nextFocus();
                                setState(() {
                                  show3 = true;
                                });
                              }
                              if(show2){
                                setState(() {
                                  show2 = false;
                                });
                              }
                            },
                            style: dataStyle.copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: 24,
                                color: Colors.black),
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(border: InputBorder.none),
                          ),



                          Visibility(
                            visible: show2,
                            child: Container(
                              height: 4,
                              width: 50,
                              color: greenColor,
                              alignment: Alignment.bottomCenter,
                            ),
                          ),


                        ],
                      ),
                    ),
//                    Container(
//                      alignment: Alignment.center,
//                      height: 50,
//                      width: 50,
//                      color: Colors.grey[100],
////                      decoration: BoxDecoration(
////                          color: Colors.white,
////                          borderRadius: BorderRadius.all(Radius.circular(55))),
//                      child: TextField(
//                        onTap: () {
//                          setState(() {
//                            show2 = true;
//                          });
//                        },
//                        textInputAction: TextInputAction.done,
//                        keyboardType: TextInputType.number,
//                        onChanged: (txt) {
//                          if (txt.length == 1) {
//                            FocusScope.of(context).nextFocus();
//                          }
//                        },
//                        style: dataStyle.copyWith(
//                            fontWeight: FontWeight.w400,
//                            fontSize: 24,
//                            color: Colors.black),
//                        textAlign: TextAlign.center,
//                        decoration: InputDecoration(border: InputBorder.none),
//                      ),
//                    ),
                    SizedBox(
                      width: 20,
                    ),

                    Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 50,
                      color: Colors.grey[100],
//                      decoration: BoxDecoration(
//                          color: Colors.grey[100],
//                          borderRadius: BorderRadius.all(Radius.circular(55))),
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: <Widget>[
                          TextField(
                            textInputAction: TextInputAction.done,
                            keyboardType: TextInputType.number,
                            onTap: () {
                              setState(() {
                                show3 = true;
                              });
                            },
                            onChanged: (txt) {
                              if (txt.length == 1) {
                                FocusScope.of(context).nextFocus();
                                setState(() {
                                  show3 = false;
                                });
                              }
//                              else{
//                                setState(() {
//                                  show3 = false;
//                                });
//                              }
                            },
                            style: dataStyle.copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: 24,
                                color: Colors.black),
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(border: InputBorder.none),
                          ),



                          Visibility(
                            visible: show3,
                            child: Container(
                              height: 4,
                              width: 50,
                              color: greenColor,
                              alignment: Alignment.bottomCenter,
                            ),

                          ),


                        ],
                      ),
                    ),
//                    Container(
//                      alignment: Alignment.center,
//                      height: 50,
//                      width: 50,
//                      color: Colors.grey[100],
////                      decoration: BoxDecoration(
////                          color: Colors.white,
////                          borderRadius: BorderRadius.all(Radius.circular(55))),
//                      child: TextField(
//                        onTap: () {
//                          setState(() {
//                            show3 = true;
//                          });
//                        },
//                        textInputAction: TextInputAction.done,
//                        keyboardType: TextInputType.number,
//                        onChanged: (txt) {
//                          if (txt.length == 1) {
//                            FocusScope.of(context).unfocus();
//                          }
//                        },
//                        style: dataStyle.copyWith(
//                            fontWeight: FontWeight.w400,
//                            fontSize: 24,
//                            color: Colors.black),
//                        textAlign: TextAlign.center,
//                        decoration: InputDecoration(border: InputBorder.none),
//                      ),
//                    ),
                  ],
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Text(
                    'Resend Code in  ',
                    textAlign: TextAlign.center,
                    style: dataStyle.copyWith(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Color(0xff78849E)),
                  ),
                ),
                Center(
                  child: Countdown(
                    controller: controller,
                    seconds: 30,
                    build: (_, double time) => Text(
                      ' 0 : ${time.floor().toString()}',
                      style: dataStyle.copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          color: Colors.red),
                    ),
                    interval: Duration(seconds: 1),
                    onFinished: () {
                      print('Timer is done!');

                      setState(() {
                        _isRestart = true;
                      });
                    },
                  ),
                ),
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
                  'Verify Code',
                  style: dataStyle.copyWith(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.normal),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ListRestaurantPage()),
                );
              },
            ),
            InkWell(
              child: Container(
                margin: EdgeInsets.only(right: 12, left: 12, top: 16),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: 'Didn’t receive a code?',
                    style: dataStyle.copyWith(
                        color: Color(0xff748A9D), fontSize: 20),
                    children: <TextSpan>[
                      TextSpan(
                          text: ' Resend ',
                          style: dataStyle.copyWith(
                              color: greenColor, fontSize: 20)),
                    ],
                  ),
                ),
              ),
              onTap: () {
                final isCompleted = controller.isCompleted;
                isCompleted ? controller.restart() : controller.pause();

                if (!isCompleted && !_isPause) {
                  controller.resume();
                }

                if (isCompleted) {
                  setState(() {
                    _isRestart = false;
                  });
                } else {
                  setState(() {
                    _isPause = !_isPause;
                  });
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
