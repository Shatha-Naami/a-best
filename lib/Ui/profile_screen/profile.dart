import 'package:best/Ui/details_my_profile_screen/details_my_profile.dart';
import 'package:best/core/constent.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF7F7FA),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 70,
                margin: EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 32),
                      child: Text(
                        'Profile',
                        style: titleStyle.copyWith(
                            color: Colors.black,
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    InkWell(
                      child: Container(
                          child: Icon(
                        Icons.settings,
                        size: 36,
                        color: Colors.black,
                      )),
                      onTap: () {
                        // pushNewScreen(
                        //   context,
                        //   screen: EditChatsScreen(),
                        //   withNavBar: false, // OPTIONAL VALUE. True by default.
                        //   pageTransitionAnimation: PageTransitionAnimation.cupertino,
                        // );
                      },
                    )
                  ],
                ),
              ),
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://cdn.extra.ie/wp-content/uploads/2020/03/11123037/Chloe-Agnew-2.jpg'),
                        fit: BoxFit.cover),
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(60)),
                    border: Border.all(color: Color(0xffFF635A), width: 2.5)),
              ),
              Container(
                margin: EdgeInsets.only(left: 15, right: 15, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10, bottom: 2),
                      alignment: Alignment.center,
                      child: Text(
                        'Albaik Restaurant',
                        style: dataStyle.copyWith(fontSize: 20),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(bottom: 10),
                        alignment: Alignment.center,
                        child: Text(
                          'Riyadh city, Al-Wahda Street',
                          style: dataStyle.copyWith(
                              fontSize: 16, color: titleColor),
                        )),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 15, right: 15, top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Container(
                                  alignment: Alignment.center,
                                  //width: 100,
                                  child: ListTile(
                                    title: Text(
                                      '12.5K',
                                      textAlign: TextAlign.center,
                                      style: dataStyle.copyWith(
                                          fontSize: 25,
                                          fontWeight: FontWeight.w100),
                                    ),
                                    subtitle: Text(
                                      'Tips',
                                      textAlign: TextAlign.center,
                                      style: dataStyle.copyWith(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w100,
                                          color: Colors.grey),
                                    ),
                                  ),
                                ),
                                flex: 1,
                              ),
                              Container(
                                width: 1,
                                color: Colors.grey[300],
                                height: 40,
                              ),
                              Expanded(
                                child: Container(
                                  alignment: Alignment.center,
                                  //width: 100,
                                  child: ListTile(
                                    title: Text(
                                      '15.1K',
                                      textAlign: TextAlign.center,
                                      style: dataStyle.copyWith(
                                          fontSize: 25,
                                          fontWeight: FontWeight.w100),
                                    ),
                                    subtitle: Text(
                                      'Followers',
                                      textAlign: TextAlign.center,
                                      style: dataStyle.copyWith(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w100,
                                          color: Colors.grey),
                                    ),
                                  ),
                                ),
                                flex: 1,
                              ),
                              Container(
                                width: 1,
                                color: Colors.grey[300],
                                height: 40,
                              ),
                              Expanded(
                                child: Container(
                                  alignment: Alignment.center,
                                  //width: 100,
                                  child: ListTile(
                                    title: Text(
                                      '32.1K',
                                      textAlign: TextAlign.center,
                                      style: dataStyle.copyWith(
                                          fontSize: 25,
                                          fontWeight: FontWeight.w100),
                                    ),
                                    subtitle: Text(
                                      'Following',
                                      textAlign: TextAlign.center,
                                      style: dataStyle.copyWith(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w100,
                                          color: Colors.grey),
                                    ),
                                  ),
                                ),
                                flex: 1,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    InkWell(
                      child: Container(
                        padding:
                            EdgeInsets.only(left: 20, right: 16, bottom: 16),
                        height: 70,
                        alignment: Alignment.center,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'My Profile',
                                  style: titleStyle.copyWith(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 22,
                                  color: Colors.black,
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
                        ),
                      ),
                      onTap: () {
                        pushNewScreen(
                          context,
                          screen: DetailsMyProfile(),
                          withNavBar: false, // OPTIONAL VALUE. True by default.
                          pageTransitionAnimation:
                              PageTransitionAnimation.cupertino,
                        );
                      },
                    ),
                    InkWell(
                      child: Container(
                        padding:
                            EdgeInsets.only(left: 20, right: 16, bottom: 16),
                        height: 70,
                        alignment: Alignment.center,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Followers',
                                  style: titleStyle.copyWith(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 22,
                                  color: Colors.black,
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
                        ),
                      ),
                      onTap: () {},
                    ),
                    InkWell(
                      child: Container(
                        padding:
                            EdgeInsets.only(left: 20, right: 16, bottom: 16),
                        height: 70,
                        alignment: Alignment.center,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Add Review',
                                  style: titleStyle.copyWith(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 22,
                                  color: Colors.black,
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
                        ),
                      ),
                      onTap: () {},
                    ),
                    InkWell(
                      child: Container(
                        padding:
                            EdgeInsets.only(left: 20, right: 16, bottom: 16),
                        height: 70,
                        alignment: Alignment.center,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Refer to Friends',
                                  style: titleStyle.copyWith(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 22,
                                  color: Colors.black,
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
                        ),
                      ),
                      onTap: () {},
                    ),
                    InkWell(
                      child: Container(
                        padding:
                            EdgeInsets.only(left: 20, right: 16, bottom: 16),
                        height: 70,
                        alignment: Alignment.center,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Rating App',
                                  style: titleStyle.copyWith(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 22,
                                  color: Colors.black,
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
                        ),
                      ),
                      onTap: () {},
                    ),
                    InkWell(
                      child: Container(
                        padding:
                            EdgeInsets.only(left: 20, right: 16, bottom: 16),
                        height: 70,
                        alignment: Alignment.center,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Call us',
                                  style: titleStyle.copyWith(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 22,
                                  color: Colors.black,
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
                        ),
                      ),
                      onTap: () {},
                    ),
                    InkWell(
                      child: Container(
                        padding:
                            EdgeInsets.only(left: 20, right: 16, bottom: 16),
                        height: 70,
                        alignment: Alignment.center,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Log Out',
                                  style: titleStyle.copyWith(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 22,
                                  color: Colors.black,
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
                        ),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
