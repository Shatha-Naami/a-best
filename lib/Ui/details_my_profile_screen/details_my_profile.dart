import 'package:best/Ui/edit_photo_profile_screen/edit_photo_profile.dart';
import 'package:best/core/constent.dart';
import 'package:best/core/constent.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class DetailsMyProfile extends StatefulWidget {
  @override
  _DetailsMyProfileState createState() => _DetailsMyProfileState();
}

class _DetailsMyProfileState extends State<DetailsMyProfile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
            child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 70,
              margin: EdgeInsets.only(left: 20, right: 20, top: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    child: Container(
                        child: Icon(
                      Icons.arrow_back,
                      size: 34,
                      color: Colors.black,
                    )),
                    onTap: () {
                      if (Navigator.canPop(context)) {
                        Navigator.pop(context);
                      } else {
                        SystemNavigator.pop();
                      }
                    },
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 4),
                      child: Text(
                        'My Profile',
                        style: titleStyle.copyWith(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  child: Image.network(
                    'https://cdn.extra.ie/wp-content/uploads/2020/03/11123037/Chloe-Agnew-2.jpg',
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
              InkWell(
                child:   Container(
                  margin: EdgeInsets.only(left: 16, right: 16, bottom: 18),
                  child: Row(
                    children: [
                      Container(
                        child: Image.asset(
                          'assets/image/camera_.png',
                          height: 34,
                        ),
                      ),
                      SizedBox(
                        width: 18,
                      ),
                      Container(
                        child: Text(
                          'Edit  pictures',
                          style: titleStyle.copyWith(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
                onTap: (){
                  pushNewScreen(
                    context,
                    screen: EditPhotoProfile(),
                    withNavBar: false, // OPTIONAL VALUE. True by default.
                    pageTransitionAnimation:
                    PageTransitionAnimation.cupertino,
                  );
                },
              )
              ],
            ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.only(right: 32, top: 24),
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 200,
                                height: 70,
                                child: ListTile(
                                  title: Container(
                                    child: Text(
                                      'User Name',
                                      style: titleStyle.copyWith(
                                          color: Color(0xff8C8B91),
                                          fontSize: 16),
                                    ),
                                    margin: EdgeInsets.only(bottom: 8),
                                  ),
                                  subtitle: Container(
                                    child: Text(
                                      'Harmony F. Ahmed',
                                      style: titleStyle.copyWith(
                                          color: Colors.black, fontSize: 20),
                                    ),
                                    margin: EdgeInsets.only(bottom: 12),
                                  ),
                                ),
                              ),
                              InkWell(
                                child: Container(
                                  child: Text(
                                    'Change',
                                    style: titleStyle.copyWith(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                onTap: () {
                                  error('Your changes have been saved.');
                                },
                              )
                            ],
                          ),
                          Container(
                            color: Colors.grey[200],
                            margin: EdgeInsets.only(left: 12, right: 12),
                            height: 2,
                            width: MediaQuery.of(context).size.width,
                          )
                        ],
                      )),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.only(right: 32, top: 12),
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 300,
                                height: 70,
                                child: ListTile(
                                  title: Container(
                                    child: Text(
                                      'Phone Number',
                                      style: titleStyle.copyWith(
                                          color: Color(0xff8C8B91),
                                          fontSize: 16),
                                    ),
                                    margin: EdgeInsets.only(bottom: 8),
                                  ),
                                  subtitle: Container(
                                    width: MediaQuery.of(context).size.width,
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/image/country.png',
                                          width: 80,
                                          // height: 12,
                                        ),
                                        SizedBox(
                                          width: 12,
                                        ),
                                        Text(
                                          '594095950',
                                          style: titleStyle.copyWith(
                                              color: Colors.black,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    ),
                                    margin: EdgeInsets.only(bottom: 12),
                                  ),
                                ),
                              ),
                              InkWell(
                                child: Container(
                                  child: Text(
                                    'Change',
                                    style: titleStyle.copyWith(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                onTap: () {
                                  error('Your changes have been saved.');
                                },
                              )
                            ],
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                            color: Colors.grey[200],
                            margin: EdgeInsets.only(left: 12, right: 12),
                            height: 2,
                            width: MediaQuery.of(context).size.width,
                          )
                        ],
                      )),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.only(right: 32, top: 12),
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 200,
                                height: 70,
                                child: ListTile(
                                  title: Container(
                                    child: Text(
                                      'City',
                                      style: titleStyle.copyWith(
                                          color: Color(0xff8C8B91),
                                          fontSize: 16),
                                    ),
                                    margin: EdgeInsets.only(bottom: 8),
                                  ),
                                  subtitle: Container(
                                    child: Text(
                                      'Riyadh city',
                                      style: titleStyle.copyWith(
                                          color: Colors.black, fontSize: 20),
                                    ),
                                    margin: EdgeInsets.only(bottom: 12),
                                  ),
                                ),
                              ),
                              InkWell(
                                child: Container(
                                  child: Text(
                                    'Change',
                                    style: titleStyle.copyWith(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                onTap: () {
                                  error('Your changes have been saved.');
                                },
                              )
                            ],
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                            color: Colors.grey[200],
                            margin: EdgeInsets.only(left: 12, right: 12),
                            height: 2,
                            width: MediaQuery.of(context).size.width,
                          )
                        ],
                      )),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.only(right: 32, top: 12),
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 200,
                                height: 70,
                                child: ListTile(
                                  title: Container(
                                    child: Text(
                                      'E-mail Address ',
                                      style: titleStyle.copyWith(
                                          color: Color(0xff8C8B91),
                                          fontSize: 16),
                                    ),
                                    margin: EdgeInsets.only(bottom: 8),
                                  ),
                                  subtitle: Container(
                                    child: Text(
                                      'email@gmail.com',
                                      style: titleStyle.copyWith(
                                          color: Colors.black, fontSize: 20),
                                    ),
                                    margin: EdgeInsets.only(bottom: 12),
                                  ),
                                ),
                              ),
                              InkWell(
                                child: Container(
                                  child: Text(
                                    'Change',
                                    style: titleStyle.copyWith(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                onTap: () {
                                  error('Your changes have been saved.');
                                },
                              )
                            ],
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                            color: Colors.grey[200],
                            margin: EdgeInsets.only(left: 12, right: 12),
                            height: 2,
                            width: MediaQuery.of(context).size.width,
                          )
                        ],
                      )),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.only(right: 32, top: 12),
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 200,
                                height: 70,
                                child: ListTile(
                                  title: Container(
                                    child: Text(
                                      'Password',
                                      style: titleStyle.copyWith(
                                          color: Color(0xff8C8B91),
                                          fontSize: 16),
                                    ),
                                    margin: EdgeInsets.only(bottom: 8),
                                  ),
                                  subtitle: Container(
                                    child: Text(
                                      '••••••••',
                                      style: titleStyle.copyWith(
                                          color: Colors.black, fontSize: 20),
                                    ),
                                    margin: EdgeInsets.only(bottom: 12),
                                  ),
                                ),
                              ),
                              InkWell(
                                child: Container(
                                  child: Text(
                                    'Change',
                                    style: titleStyle.copyWith(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                onTap: () {
                                  error('Your changes have been saved.');
                                },
                              )
                            ],
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                            color: Colors.grey[200],
                            margin: EdgeInsets.only(left: 12, right: 12),
                            height: 2,
                            width: MediaQuery.of(context).size.width,
                          )
                        ],
                      )),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }

  void error(String errorCode) {
    Fluttertoast.showToast(
        msg: errorCode,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIos: 1,
        backgroundColor: Color(0xff222B45),
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
