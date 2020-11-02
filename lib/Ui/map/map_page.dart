//import 'package:best/Ui/list_restaurant/list_restaurant_page.dart';
//import 'package:best/Ui/map_filter/map_filter_page.dart';
//import 'package:best/core/constent.dart';
//import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';
//import 'package:page_transition/page_transition.dart';
//
//class MapPage extends StatefulWidget {
//  @override
//  _MapPageState createState() => _MapPageState();
//}
//
//class _MapPageState extends State<MapPage> {
//  @override
//  Widget build(BuildContext context) {
//    return SafeArea(
//      child: Scaffold(
//        body: Stack(
//          alignment: Alignment.bottomCenter,
//          children: [
//            Container(
//                height: MediaQuery.of(context).size.height,
//                width: MediaQuery.of(context).size.width,
//                child: Image.asset(
//                  'assets/image/mapp.png',
//                  fit: BoxFit.cover,
//                )),
//            Column(
//              mainAxisAlignment: MainAxisAlignment.spaceBetween,
//              children: [
//                Container(
//                  color: Colors.white,
//                  padding:
//                      EdgeInsets.only(left: 15, right: 15, top: 12, bottom: 10),
//                  child: Column(
//                    children: [
//                      Row(
//                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                        children: [
//                          InkWell(
//                            child: Icon(
//                              Icons.arrow_back,
//                              size: 26,
//                            ),
//                            onTap: () {
//                              Navigator.push(
//                                context,
//                                MaterialPageRoute(
//                                    builder: (context) => ListRestaurantPage()),
//                              );
//                            },
//                          ),
//                          InkWell(
//                            child: Icon(
//                              Icons.search,
//                              size: 30,
//                            ),
//                            onTap: () {},
//                          )
//                        ],
//                      ),
//                      Container(
//                          margin: EdgeInsets.only(top: 10, bottom: 5),
//                          alignment: Alignment.centerLeft,
//                          child: Text(
//                            'Riyadh city',
//                            style: dataStyle.copyWith(fontSize: 27),
//                            textDirection: TextDirection.ltr,
//                          )),
//                      Container(
//                          margin: EdgeInsets.only(bottom: 4),
//                          alignment: Alignment.centerLeft,
//                          child: Text(
//                            'Restaurant.   35 Place',
//                            style: dataStyle.copyWith(
//                                fontSize: 17, color: titleColor),
//                            textDirection: TextDirection.ltr,
//                          )),
//                    ],
//                  ),
//                ),
//                Column(
//                  children: [
//                    Row(
//                      mainAxisAlignment: MainAxisAlignment.end,
//                      children: [
//                        Container(
//                          margin: EdgeInsets.only(right: 20),
//                          width: 45,
//                          alignment: Alignment.center,
//                          height: 45,
//                          decoration: BoxDecoration(
//                            color: Colors.white,
//                            boxShadow: [
//                              BoxShadow(
//                                color: Colors.grey.withOpacity(0.2),
//                                spreadRadius: 5,
//                                blurRadius: 7,
//                                offset:
//                                    Offset(0, 2), // changes position of shadow
//                              ),
//                            ],
//                            borderRadius: BorderRadius.all(Radius.circular(10)),
//                          ),
//                          child: Image.asset(
//                            'assets/image/gps.png',
//                            width: 28,
//                            height: 28,
//                          ),
//                        ),
//                      ],
//                    ),
//                    SizedBox(
//                      height: 20,
//                    ),
//                    Container(
//                      margin: EdgeInsets.only(bottom: 25),
//                      padding: EdgeInsets.only(left: 6, right: 6),
//                      width: 180,
//                      height: 45,
//                      decoration: BoxDecoration(
//                        color: Colors.white,
//                        boxShadow: [
//                          BoxShadow(
//                            color: Colors.grey.withOpacity(0.3),
//                            spreadRadius: 5,
//                            blurRadius: 7,
//                            offset: Offset(0, 2), // changes position of shadow
//                          ),
//                        ],
//                        borderRadius: BorderRadius.all(Radius.circular(22)),
//                      ),
//                      child: Row(
//                        mainAxisAlignment: MainAxisAlignment.spaceAround,
//                        children: [
//                          InkWell(
//                            onTap: () {
//                              Navigator.push(
//                                context,
//                                MaterialPageRoute(
//                                    builder: (context) => MapFilterPage()),
//                              );
//                            },
//                            child: Row(
//                              children: [
//                                Image.asset(
//                                  'assets/image/filter.png',
//                                  width: 20,
//                                  height: 20,
//                                ),
//                                SizedBox(
//                                  width: 4,
//                                ),
//                                Text(
//                                  'Filter',
//                                  style: dataStyle.copyWith(
//                                      fontSize: 16,
//                                      fontWeight: FontWeight.w100),
//                                )
//                              ],
//                            ),
//                          ),
//                          Container(
//                            width: 2,
//                            color: Colors.grey[200],
//                          ),
//                          InkWell(
//                            onTap: () {
//                              Navigator.push(
//                                context,
//                                PageTransition(
//                                  type: PageTransitionType.topToBottom,
//                                  duration: Duration(milliseconds: 1200),
//                                  child: ListRestaurantPage(),
//                                ),
//                              );
//                            },
//                            child: Row(
//                              children: [
//                                Image.asset(
//                                  'assets/image/list.png',
//                                  width: 22,
//                                  height: 22,
//                                ),
//                                SizedBox(
//                                  width: 6,
//                                ),
//                                Text(
//                                  'List',
//                                  style: dataStyle.copyWith(
//                                      fontSize: 16,
//                                      fontWeight: FontWeight.w100),
//                                )
//                              ],
//                            ),
//                          )
//                        ],
//                      ),
//                    )
//                  ],
//                )
//              ],
//            )
//          ],
//        ),
//      ),
//    );
//  }
//}
import 'package:best/Ui/list_restaurant/list_restaurant_page.dart';
import 'package:best/Ui/map_filter/map_filter_page.dart';
import 'package:best/core/constent.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:page_transition/page_transition.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:collection';
import 'package:location/location.dart';
import 'package:flutter/services.dart';

class MapPage extends StatefulWidget {
  final String myValue;

  final double latitude;
  final double longitude;

  MapPage({this.myValue, @required this.latitude, @required this.longitude});

  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  @override
  initState() {
    super.initState();
    getCurrentLocation();
    getMarkerUserLocation();
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

  final _formKey = GlobalKey<FormState>();
  bool val = false;

  List<Marker> allMarker = [];
  BitmapDescriptor pinLocationIcon;

  getMarkerUserLocation() async {
    await BitmapDescriptor.fromAssetImage(
            ImageConfiguration(devicePixelRatio: 0.5, size: Size(2, 2)),
            'assets/image/map_avatar.png')
        .then((onValue) {
      pinLocationIcon = onValue;
    });
    giveIconLocation();
  }

  giveIconLocation() {
    print('1111');
    setState(() {
      allMarker.add(
        Marker(
          icon: pinLocationIcon,
          markerId: MarkerId('firstMarker'),
          position: LatLng(widget.latitude, widget.longitude),
        ),
      );
    });
    print('allMarker.length ${allMarker.length}');
  }

  Set<Polyline> _polylines = HashSet<Polyline>();

  GoogleMapController _controller;
  bool isMapCreated = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: GoogleMap(
                zoomControlsEnabled: false,
                markers: Set.from(allMarker),
                onMapCreated: (GoogleMapController controller) {
                  _controller = controller;
                  isMapCreated = true;
                  setState(() {});
                },
                initialCameraPosition: CameraPosition(
                  target: LatLng(widget.latitude, widget.longitude),
                  zoom: 12,
                ),
                mapType: MapType.normal,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  color: Colors.white,
                  padding:
                      EdgeInsets.only(left: 15, right: 15, top: 12, bottom: 10),
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
                                    builder: (context) => ListRestaurantPage()),
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
                          margin: EdgeInsets.only(top: 10, bottom: 5),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Riyadh city',
                            style: dataStyle.copyWith(fontSize: 27),
                            textDirection: TextDirection.ltr,
                          )),
                      Container(
                          margin: EdgeInsets.only(bottom: 4),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Restaurant.   35 Place',
                            style: dataStyle.copyWith(
                                fontSize: 17, color: titleColor),
                            textDirection: TextDirection.ltr,
                          )),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 20),
                          width: 45,
                          alignment: Alignment.center,
                          height: 45,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset:
                                    Offset(0, 2), // changes position of shadow
                              ),
                            ],
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Image.asset(
                            'assets/image/gps.png',
                            width: 28,
                            height: 28,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
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
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MapFilterPage(
                                          latitude: userLatitude,
                                          longitude: userLongitude,
                                        )),
                              );
                            },
                            child: Row(
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
                                      fontSize: 16,
                                      fontWeight: FontWeight.w100),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 2,
                            color: Colors.grey[200],
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ListRestaurantPage()),
                              );
//                              Navigator.push(
//                                context,
//                                PageTransition(
//                                  type: PageTransitionType.topToBottom,
//                                  duration: Duration(milliseconds: 1200),
//                                  child: ListRestaurantPage(),
//                                ),
//                              );
                            },
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/image/icon.png',
                                  width: 20,
                                  height: 20,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  'List',
                                  style: dataStyle.copyWith(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w100),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
