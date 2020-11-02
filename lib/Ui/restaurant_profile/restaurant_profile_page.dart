import 'package:best/Ui/add_story/add_story_screen.dart';
import 'package:best/core/constent.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:page_transition/page_transition.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class RestaurantProfile extends StatefulWidget {
  @override
  _RestaurantProfileState createState() => _RestaurantProfileState();
}

class _RestaurantProfileState extends State<RestaurantProfile> {
  var _listControllerSlider = ScrollController();

  Future getPermission() async {
    Map<Permission, PermissionStatus> statuses = await [
      Permission.storage,
      Permission.photos,
      Permission.microphone,

    ].request();
    print(statuses);
    if (statuses.containsValue(PermissionStatus.denied)) {
      print('noooo');
      getPermissionAlert();
    } else {
//      Navigator.push(
//        context,
//        PageTransition(
//          type: PageTransitionType.bottomToTop,
//          duration: Duration(milliseconds: 1000),
//          child: AddStoryPage(),
//        ),
//      );
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AddStoryPage()),
      );
//      Navigator.push(
//        context,
//        PageTransition(
//          type: PageTransitionType.scale,
//          duration: Duration(milliseconds: 1600),
//          child: AddStoryPage(),
//        ),
//      );
      //Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
    }
  }

  Future getPermissionAlert() async {
    Alert(
      context: context,
      style: AlertStyle(
        isCloseButton: false,
      ),
      title: "Warning",
      desc: "There Are Permission Denied",
      buttons: [
//        DialogButton(
//          color: Colors.black,
//          child: Text(
//            "Ok",
//            style: TextStyle(color: Colors.white, fontSize: 20),
//          ),
//          onPressed: () {
//            getPermission();
//            Navigator.of(context).pop();
//          },
//          width: 120,
//        ),
        DialogButton(
          color: greenColor,
          child: Text(
            "Done",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () {
            Navigator.of(context).pop();
            Future.delayed(const Duration(seconds: 1)).then((value) {
              SystemChannels.platform.invokeMethod('SystemNavigator.pop');
            });
          },
          width: 120,
        )
      ],
    ).show();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          shrinkWrap: true,
          children: [
            Container(
                child: Stack(
              children: [
                Image.asset(
                  'assets/image/photo.png',
                  fit: BoxFit.cover,
                ),
                Container(
                  margin: EdgeInsets.only(left: 15, right: 15, top: 60),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          InkWell(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.black26,
                                borderRadius:
                                BorderRadius.all(Radius.circular(16)),
                              ),
                              child: Icon(
                                Icons.arrow_back,
                                size: 28,
                                color: Colors.black,
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
                          InkWell(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.black26,
                                borderRadius:
                                BorderRadius.all(Radius.circular(16)),
                              ),
                              child: Icon(
                                Icons.more_vert,
                                size: 28,
                                color: Colors.black,
                              ),
                            ),
                            onTap: () {},
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            width: 120,
                            height: 120,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://cdn.extra.ie/wp-content/uploads/2020/03/11123037/Chloe-Agnew-2.jpg'),
                                    fit: BoxFit.cover),
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(60)),
                                border:
                                    Border.all(color: Colors.white, width: 2)),
                          ),
                          Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(bottom: 10),
                            width: 83,
                            height: 34,
                            decoration: BoxDecoration(
                              border: Border.all(color: greenColor, width: 1.5),
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16)),
                            ),
                            child: Text(
                              'Follow',
                              style: titleStyle.copyWith(
                                  color: greenColor,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w100),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            )),
            Container(
              margin: EdgeInsets.only(
                left: 15,
                right: 15,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 2),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Albaik Restaurant',
                      style: dataStyle.copyWith(fontSize: 18),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(bottom: 10),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Riyadh city, Al-Wahda Street',
                        style:
                            dataStyle.copyWith(fontSize: 15, color: titleColor),
                      )),
                  Row(
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
                          'Open Now ',
                          style: titleStyle.copyWith(
                              color: greenColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w100),
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(left: 8, right: 8),
                          alignment: Alignment.center,
                          width: 54,
                          height: 25,
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.all(Radius.circular(16)),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.star,
                                size: 18,
                                color: Color(0xffFFC700),
                              ),
                              Text(
                                '4.5',
                                style: titleStyle.copyWith(
                                    color: Color(0xffFFC700),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w100),
                              ),
                            ],
                          )),
                      Container(
                        margin: EdgeInsets.only(right: 8),
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
                      Container(
                        alignment: Alignment.center,
                        width: 110,
                        height: 25,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                        ),
                        child: Text(
                          'Get directions',
                          style: titleStyle.copyWith(
                              color: Color(0xff3ACCE1),
                              fontSize: 14,
                              fontWeight: FontWeight.w100),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 15, top: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        child: Container(
                          width: 220,
                          height: 35,
                          decoration: BoxDecoration(
                            color: greenColor,
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/image/Messenger.png',
                                width: 20,
                                height: 20,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'message',
                                style: dataStyle.copyWith(
                                    color: Colors.white, fontSize: 18),
                              )
                            ],
                          ),
                        ),
                        onTap: () {},
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: 44,
                          height: 35,
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          child: Icon(
                            Icons.phone,
                            color: Colors.black,
                            size: 25,
                          ),
                          alignment: Alignment.center,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: 44,
                          height: 35,
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          child: Icon(
                            Icons.more_horiz,
                            color: Colors.black,
                            size: 25,
                          ),
                          alignment: Alignment.center,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  Divider(
                    height: 4,
                    color: Colors.grey[200],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Home',
                        style: titleStyle.copyWith(
                            color: greenColor,
                            fontSize: 17,
                            fontWeight: FontWeight.w100),
                      ),
                      Text(
                        'Stories',
                        style: dataStyle.copyWith(
                            fontSize: 17, color: Colors.black),
                      ),
                      Text(
                        'Food dishes',
                        style: dataStyle.copyWith(
                            fontSize: 17, color: Colors.black),
                      ),
                      Text(
                        'Tips',
                        style: dataStyle.copyWith(
                            fontSize: 17, color: Colors.black),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              height: 5,
              color: Colors.grey[200],
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 15, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Restaurant statistics',
                    style: dataStyle.copyWith(
                        fontSize: 18, fontWeight: FontWeight.w100),
                  ),
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
                              '125',
                              textAlign: TextAlign.center,
                              style: dataStyle.copyWith(
                                  fontSize: 25, fontWeight: FontWeight.w100),
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
                        width: 3,
                        color: Colors.grey[300],
                        height: 40,
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          //width: 100,
                          child: ListTile(
                            title: Text(
                              '125',
                              textAlign: TextAlign.center,
                              style: dataStyle.copyWith(
                                  fontSize: 25, fontWeight: FontWeight.w100),
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
                        width: 3,
                        color: Colors.grey[300],
                        height: 40,
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          //width: 100,
                          child: ListTile(
                            title: Text(
                              '125',
                              textAlign: TextAlign.center,
                              style: dataStyle.copyWith(
                                  fontSize: 25, fontWeight: FontWeight.w100),
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
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
              height: 5,
              color: Colors.grey[200],
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 15, bottom: 8, top: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/image/warning.png',
                        width: 30,
                        height: 30,
                      ),
                      Text(
                        'Do the right thing & stay home',
                        style: dataStyle.copyWith(
                          fontSize: 18,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.more_horiz,
                          size: 28,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 40, top: 6),
                    child: Text(
                      'you can do your part to prevent the spread of COVID-19 by simply staying home and practicing social distancing.',
                      style: dataStyle.copyWith(
                          fontSize: 16.5,
                          fontWeight: FontWeight.w100,
                          color: Color(0xff3E3F68)),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              height: 5,
              color: Colors.grey[200],
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 15, bottom: 8, top: 8),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Stories',
                        style: dataStyle.copyWith(
                            fontSize: 18, fontWeight: FontWeight.w100),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.more_horiz,
                          size: 28,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 230,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        controller: _listControllerSlider,
                        itemCount: 4,
                        itemBuilder: (ctx, index) {
                          if (index == 0) {
                            return InkWell(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12)),
                                ),
                                height: 230,
                                width: 150,
                                margin: EdgeInsets.only(right: 10),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          child: Image.asset(
                                              'assets/image/girl.png'),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(bottom: 14),
                                          width: 90,
                                          child: Text(
                                            'Create a New Story',
                                            style: dataStyle.copyWith(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w100),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                        width: 35,
                                        height: 35,
                                        margin: EdgeInsets.only(top: 32),
                                        child: Image.asset(
                                            'assets/image/add.png')),
                                  ],
                                ),
                              ),

                              onTap: () {
                                getPermission();
                              },
                            );
                          } else {
                            return Container(
                              margin: EdgeInsets.only(right: 8),
                              alignment: Alignment.center,
                              height: 230,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.grey[100],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(22)),
                              ),
                              child: Stack(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              'https://images.squarespace-cdn.com/content/53a2b3a1e4b0a5020bebe676/1517849670763-DWN1KELN1X4NLXRUNL5I/chrystall-goodden-food-photography-dorset-16.jpg?format=1000w&content-type=image%2Fjpeg'),
                                          fit: BoxFit.cover),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(12)),
                                    ),
                                    height: 230,
                                    width: 150,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 5, left: 5),
                                    child: Container(
                                      alignment: Alignment.topLeft,
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  'https://cdn.extra.ie/wp-content/uploads/2020/03/11123037/Chloe-Agnew-2.jpg'),
                                              fit: BoxFit.cover),
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(60)),
                                          border: Border.all(
                                              color: Colors.white, width: 2)),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }
                        }),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              height: 5,
              color: Colors.grey[200],
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 15, bottom: 8, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Your tips makes a difference.',
                    style: dataStyle.copyWith(
                        fontSize: 18, fontWeight: FontWeight.w100),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15, bottom: 15),
                    child: Row(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://cdn.extra.ie/wp-content/uploads/2020/03/11123037/Chloe-Agnew-2.jpg'),
                                  fit: BoxFit.cover),
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(60)),
                              border: Border.all(color: Colors.red, width: 1)),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Text(
                            'Write a tip to the restaurant …',
                            style: dataStyle.copyWith(
                                fontSize: 15,
                                fontWeight: FontWeight.w100,
                                color: Color(0xff3E3F68)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(22)),
                            ),
                            width: 35,
                            height: 35,
                            child: Image.asset(
                              'assets/image/camera.png',
                              width: 25,
                              height: 25,
                            ),
                            alignment: Alignment.center,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            'Add Photo',
                            style: dataStyle.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w100,
                                color: Color(0xff3E3F68)),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(22)),
                            ),
                            width: 35,
                            height: 35,
                            child: Image.asset(
                              'assets/image/correct.png',
                              width: 25,
                              height: 25,
                            ),
                            alignment: Alignment.center,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            'Check In',
                            style: dataStyle.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w100,
                                color: Color(0xff3E3F68)),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(22)),
                            ),
                            width: 35,
                            height: 35,
                            child: Image.asset(
                              'assets/image/star.png',
                              width: 25,
                              height: 25,
                            ),
                            alignment: Alignment.center,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            'Rateing',
                            style: dataStyle.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w100,
                                color: Color(0xff3E3F68)),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              height: 5,
              color: Colors.grey[200],
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 15, bottom: 8, top: 8),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Popular Dishes',
                        style: dataStyle.copyWith(
                            fontSize: 18, fontWeight: FontWeight.w100),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.more_horiz,
                          size: 28,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8),
                    height: 210,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      controller: _listControllerSlider,
                      itemCount: 5,
                      itemBuilder: (ctx, index) => Container(
                        margin: EdgeInsets.only(right: 8),
                        height: 200,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(22)),
                        ),
                        child: Column(
                          children: [
                            Stack(
                              alignment: Alignment.bottomLeft,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          'https://images.squarespace-cdn.com/content/53a2b3a1e4b0a5020bebe676/1517849670763-DWN1KELN1X4NLXRUNL5I/chrystall-goodden-food-photography-dorset-16.jpg?format=1000w&content-type=image%2Fjpeg'),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12)),
                                  ),
                                  height: 150,
                                  width: 150,
                                ),
                                Container(
                                  child: Text(
                                    'SR 16.95',
                                    style: titleStyle.copyWith(
                                        color: Colors.white),
                                  ),
                                  margin: EdgeInsets.only(left: 10, bottom: 10),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 5, bottom: 5),
                                  child: Text(
                                    'Margherita',
                                    style: dataStyle.copyWith(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w100,
                                      color: Color(0xff222B45),
                                    ),
                                  ),
                                ),
                                Text(
                                  '143 Photos . 545 Tips',
                                  style: dataStyle.copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w100,
                                      color: Color(0xff3E3F68)),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              height: 5,
              color: Colors.grey[200],
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 15, bottom: 8, top: 8),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Popular Dishes',
                        style: dataStyle.copyWith(
                            fontSize: 18, fontWeight: FontWeight.w100),
                      ),
                      Icon(
                        Icons.more_horiz,
                        size: 28,
                        color: Colors.black,
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8),
                    height: 210,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      controller: _listControllerSlider,
                      itemCount: 5,
                      itemBuilder: (ctx, index) => Container(
                        margin: EdgeInsets.only(right: 8),
                        height: 200,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(22)),
                        ),
                        child: Column(
                          children: [
                            Stack(
                              alignment: Alignment.bottomLeft,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          'https://images.squarespace-cdn.com/content/53a2b3a1e4b0a5020bebe676/1517849670763-DWN1KELN1X4NLXRUNL5I/chrystall-goodden-food-photography-dorset-16.jpg?format=1000w&content-type=image%2Fjpeg'),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12)),
                                  ),
                                  height: 150,
                                  width: 150,
                                ),
                                Container(
                                  child: Text(
                                    'SR 16.95',
                                    style: titleStyle.copyWith(
                                        color: Colors.white),
                                  ),
                                  margin: EdgeInsets.only(left: 10, bottom: 10),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 5, bottom: 5),
                                  child: Text(
                                    'Margherita',
                                    style: dataStyle.copyWith(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w100,
                                      color: Color(0xff222B45),
                                    ),
                                  ),
                                ),
                                Text(
                                  '143 Photos . 545 Tips',
                                  style: dataStyle.copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w100,
                                      color: Color(0xff3E3F68)),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              height: 5,
              color: Colors.grey[200],
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 15, top: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Update The Community ',
                        style: dataStyle.copyWith(
                            fontSize: 20, fontWeight: FontWeight.w100),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.more_horiz,
                          size: 28,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15, bottom: 15),
                    child: Text(
                      'could you tell us more about this business? ',
                      style: dataStyle.copyWith(
                          fontSize: 16.5,
                          fontWeight: FontWeight.w100,
                          color: Color(0xff3E3F68)),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InkWell(
                        child: Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(bottom: 10),
                          width: 80,
                          height: 34,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 1),
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(16)),
                          ),
                          child: Text(
                            'Yes',
                            style: titleStyle.copyWith(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.w100),
                          ),
                        ),
                        onTap: () {},
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(bottom: 10, left: 20),
                          width: 80,
                          height: 34,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 1),
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(16)),
                          ),
                          child: Text(
                            'No',
                            style: titleStyle.copyWith(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.w100),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              height: 5,
              color: Colors.grey[200],
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 15, top: 10),
              child: Column(
                children: [
                  Container(
                    child: Text(
                      'All Tips',
                      style: dataStyle.copyWith(
                          fontSize: 19, fontWeight: FontWeight.w100),
                    ),
                    alignment: Alignment.topLeft,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15, bottom: 10, left: 12),
                    child: Text(
                      'Do you have something we don’t know?',
                      style: dataStyle.copyWith(
                          fontSize: 17, fontWeight: FontWeight.w100),
                    ),
                  ),
                  Text(
                    'Let’s get started! write a helpful tip to help other people who visit this place.',
                    style: dataStyle.copyWith(
                        fontSize: 15,
                        fontWeight: FontWeight.w100,
                        color: Color(0xff3E3F68)),
                  ),
                  InkWell(
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top: 25),
                      decoration: BoxDecoration(
                        color: greenColor,
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      height: 40,
                      width: 150,
                      child: Text(
                        'Write a Tips',
                        style: dataStyle.copyWith(
                            color: Colors.white, fontSize: 18),
                      ),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              height: 5,
              color: Colors.grey[200],
            ),
            Container(
              margin: EdgeInsets.only(left: 15, right: 15, top: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      'Share this Business',
                      style: dataStyle.copyWith(
                          fontSize: 18, fontWeight: FontWeight.w100),
                    ),
                    margin: EdgeInsets.only(bottom: 15),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            alignment: Alignment.center,
                            //width: 100,
                            child: ListTile(
                              title: Image.asset(
                                'assets/image/massge.png',
                                width: 23,
                                height: 23,
                              ),
                              subtitle: Text(
                                'Messages',
                                textAlign: TextAlign.center,
                                style: dataStyle.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w100,
                                    color: Colors.grey),
                              ),
                            ),
                          ),
                        ),
                        flex: 1,
                      ),
                      Container(
                        width: 2,
                        color: Colors.grey[300],
                        height: 40,
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            alignment: Alignment.center,
                            //width: 100,
                            child: ListTile(
                              title: Image.asset(
                                'assets/image/list.png',
                                width: 23,
                                height: 23,
                              ),
                              subtitle: Text(
                                'Copy Link',
                                textAlign: TextAlign.center,
                                style: dataStyle.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w100,
                                    color: Colors.grey),
                              ),
                            ),
                          ),
                        ),
                        flex: 1,
                      ),
                      Container(
                        width: 2,
                        color: Colors.grey[300],
                        height: 40,
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            alignment: Alignment.center,
                            //width: 100,
                            child: ListTile(
                              title: Icon(
                                Icons.more_horiz,
                                size: 32,
                              ),
                              subtitle: Text(
                                'More',
                                textAlign: TextAlign.center,
                                style: dataStyle.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w100,
                                    color: Colors.grey),
                              ),
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
            Container(
              margin: EdgeInsets.only(top: 10),
              height: 5,
              color: Colors.grey[200],
            ),
          ],
        ),
      ),
    );
  }
}
