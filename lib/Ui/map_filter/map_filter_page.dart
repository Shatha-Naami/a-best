//import 'package:best/Ui/list_restaurant/list_restaurant_page.dart';
//import 'package:best/Ui/map/map_page.dart';
//import 'package:best/core/constent.dart';
//import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';
//
//class MapFilterPage extends StatefulWidget {
//  @override
//  _MapFilterPageState createState() => _MapFilterPageState();
//}
//
//class _MapFilterPageState extends State<MapFilterPage> {
//  var _listControllerSlider = ScrollController();
//
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
//                                    builder: (context) => MapPage()),
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
//                      Container(
//                        height: 32,
//                        child: ListView.builder(
//                          scrollDirection: Axis.horizontal,
//                          controller: _listControllerSlider,
//                          itemCount: 4,
//                          itemBuilder: (ctx, index) => Container(
//                            margin: EdgeInsets.only(right: 8),
//                            alignment: Alignment.center,
//                            width: 85,
//                            height: 32,
//                            decoration: BoxDecoration(
//                              color: Colors.grey[100],
//                              borderRadius:
//                                  BorderRadius.all(Radius.circular(22)),
//                            ),
//                            child: Text(
//                              'Hotels',
//                              style: dataStyle.copyWith(
//                                  color: greenColor,
//                                  fontSize: 16,
//                                  fontWeight: FontWeight.w100),
//                            ),
//                          ),
//                        ),
//                      )
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
//                            onTap: () {},
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
//                                MaterialPageRoute(
//                                    builder: (context) => ListRestaurantPage()),
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
import 'package:best/Ui/map/map_page.dart';
import 'package:best/core/constent.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:collection';

class MapFilterPage extends StatefulWidget {
  final String myValue;

  final double latitude;
  final double longitude;

  MapFilterPage(
      {this.myValue, @required this.longitude, @required this.latitude});

  @override
  _MapFilterPageState createState() => _MapFilterPageState();
}

class _MapFilterPageState extends State<MapFilterPage> {
  List<Marker> allMarker = [];

  //BitmapDescriptor pinLocationIcon;

  @override
  initState() {
    super.initState();

    giveIconLocation();
  }

//  getMarkerUserLocation() async {
//    await BitmapDescriptor.fromAssetImage(
//            ImageConfiguration(devicePixelRatio: 0.5, size: Size(2, 2)),
//            'assets/image/map_avatar.png')
//        .then((onValue) {
//      print('pnValue $onValue');
//      pinLocationIcon = onValue;
//    });
//    giveIconLocation();
//  }

  giveIconLocation() {
    print('1111');
    setState(() {
      allMarker.add(
        Marker(
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
  var _listControllerSlider = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: GoogleMap(
                markers: Set.from(allMarker),
                zoomControlsEnabled: false,
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
                                    builder: (context) => MapPage(
                                          latitude: widget.latitude,
                                          longitude: widget.longitude,
                                        )),
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
                      Container(
                        height: 32,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          controller: _listControllerSlider,
                          itemCount: 4,
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
                            onTap: () {},
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
            )
          ],
        ),
      ),
    );
  }
}
