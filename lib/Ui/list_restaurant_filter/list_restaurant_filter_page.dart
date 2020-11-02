import 'package:best/Ui/list_restaurant/list_restaurant_page.dart';
import 'package:best/Ui/list_restaurant_filter/item.dart';
import 'package:best/Ui/map/map_page.dart';
import 'package:best/core/constent.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:location/location.dart';
//import 'package:page_transition/page_transition.dart';

class ListRestaurantFilterPage extends StatefulWidget {
  @override
  _ListRestaurantFilterPageState createState() =>
      _ListRestaurantFilterPageState();
}

class _ListRestaurantFilterPageState extends State<ListRestaurantFilterPage> {
  @override
  initState() {
    super.initState();
    getCurrentLocation();
  }

  double userLongitude;

  double userLatitude;

  getCurrentLocation() async {
    dynamic currentLocation = LocationData;
    var error;
    var location = new Location();

    try {
      currentLocation = await location.getLocation();
      userLatitude = currentLocation.latitude;
      userLongitude = currentLocation.longitude;

    } on PlatformException catch (e) {
      if (e.code == 'PERMISSION_DENIED') {
        error = 'Permission denied';
      }
      currentLocation = null;
    }
  }

  @override
  Widget build(BuildContext context) {
    var _listControllerSlider = ScrollController();
    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        left: 15, right: 15, top: 20, bottom: 10),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              child: Icon(
                                Icons.arrow_back,
                                size: 26,
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          ListRestaurantPage()),
                                );
                              },
                            ),
                            InkWell(
                              child: Icon(
                                Icons.search,
                                size: 30,
                              ),
                              onTap: () {},
                            )
                          ],
                        ),
                        Container(
                            margin: EdgeInsets.only(top: 10, bottom: 2),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Riyadh city',
                              style: dataStyle.copyWith(fontSize: 27),
                              textDirection: TextDirection.ltr,
                            )),
                        Container(
                            margin: EdgeInsets.only(bottom: 10),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Restaurant.   35 Place',
                              style: dataStyle.copyWith(
                                  fontSize: 17, color: titleColor),
                              textDirection: TextDirection.ltr,
                            )),
                        Container(
                          height: 32,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            controller: _listControllerSlider,
                            itemCount: 8,
                            itemBuilder: (ctx, index) => Container(
                              margin: EdgeInsets.only(right: 8),
                              alignment: Alignment.center,
                              width: 85,
                              height: 32,
                              decoration: BoxDecoration(
                                color: Colors.grey[100],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(22)),
                              ),
                              child: Text(
                                'Hotels',
                                style: dataStyle.copyWith(
                                    color: greenColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w100),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Scrollbar(
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        controller: _listControllerSlider,
                        itemCount: 7,
                        itemBuilder: (ctx, index) => (index < 2)
                            ? CardIcon(
                                action: () {
                                  print('okk!!');
                                },
                                text1:
                                    'https://lh3.googleusercontent.com/a-/AAuE7mChgTiAe-N8ibcM3fB_qvGdl2vQ9jvjYv0iOOjB=s96-c',
                                text2: 'Albaik Restaurant',
                                text3: 'Riyadh city, Al-Wahda Street',
                                text4: 'Open Now ',
                                text5: '4.5 Km',
                                text6: '4.5',
                                color: greenColor,
                              )
                            : (index < 4)
                                ? CardIcon(
                                    action: () {
                                      print('okk!!');
                                    },
                                    text1:
                                        'https://www.francetvinfo.fr/image/759slayte-21c0/1500/843/10706201.jpg',
                                    text2: 'Albaik Restaurant',
                                    text3: 'Riyadh city, Al-Wahda Street',
                                    text4: 'Open Now ',
                                    text5: '4.5 Km',
                                    text6: '3.5',
                                    color: Color(0xffFFC700),
                                  )
                                : CardIcon(
                                    action: () {
                                      print('okk!!');
                                    },
                                    text1:
                                        'https://upload.wikimedia.org/wikipedia/commons/3/36/Hopetoun_falls.jpg',
                                    text2: 'Albaik Restaurant',
                                    text3: 'Riyadh city, Al-Wahda Street',
                                    text4: 'Open Now ',
                                    text5: '4.5 Km',
                                    text6: '1.5',
                                    color: Color(0xffFF635A),
                                  ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 25),
              padding: EdgeInsets.only(left: 6, right: 6),
              width: 180,
              height: 45,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 2), // changes position of shadow
                  ),
                ],
                borderRadius: BorderRadius.all(Radius.circular(22)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/image/filter.png',
                        width: 20,
                        height: 20,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        'Filter',
                        style: dataStyle.copyWith(
                            fontSize: 16, fontWeight: FontWeight.w100),
                      )
                    ],
                  ),
                  Container(
                    width: 2,
                    color: Colors.grey[200],
                  ),
                  InkWell(
                    onTap: () {
//                      Navigator.push(
//                        context,
//                        PageTransition(
//                          type: PageTransitionType.rotate,
//                          alignment: Alignment.bottomCenter,
//                          curve: Curves.bounceOut,
//                          duration: Duration(milliseconds: 900),
//                          child:MapPage(
//                            latitude: userLatitude,
//                            longitude: userLongitude,
//                          )
//                        ),
//                      );
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MapPage(
                                  latitude: userLatitude,
                                  longitude: userLongitude,
                                )),
                      );
                    },
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/image/map.png',
                          width: 22,
                          height: 22,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          'Map',
                          style: dataStyle.copyWith(
                              fontSize: 16, fontWeight: FontWeight.w100),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
