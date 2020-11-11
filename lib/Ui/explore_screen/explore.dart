import 'package:flutter/material.dart';
// import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:best/widgets/categories_carosel.dart';
import 'package:best/widgets/slider_images.dart';
import 'package:best/widgets/trending_places.dart';

class ExploreScreen extends StatefulWidget {
  static const String id = 'home_screen';

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: <Widget>[
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          Icons.menu,
                          color: Color(0xFF222B45),
                          size: 30.0,
                        ),
                        onPressed: null,
                      ),
                      Container(
                        padding: EdgeInsets.all(5.0),
                        width: 100.0,
                        alignment: Alignment.center,
                        child: Text(
                          'Riyadh city',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            color: Colors.black,
                            width: 1.0,
                          ),
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.search,
                          color: Color(0xFF222B45),
                          size: 30.0,
                        ),
                        onPressed: null,
                      ),
                    ],
                  ),
                ),
                SliderImages(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Categories',
                        style: TextStyle(
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                          wordSpacing: 1.5,
                          color: Color(0xFF222B45),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Do Something
                        },
                        child: Text(
                          'See All',
                          style: TextStyle(
                            color: Color(0xFF9BA5BF),
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            wordSpacing: 1.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                CategoriesCarosel(),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Trending places',
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                              wordSpacing: 1.5,
                              color: Color(0xFF222B45),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              // Do Something
                            },
                            child: Text(
                              'See All',
                              style: TextStyle(
                                color: Color(0xFF9BA5BF),
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                wordSpacing: 1.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Riyadh city',
                            style: TextStyle(
                              color: Color(0xFF78849E),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                TrendingPlaces(),
                TrendingPlaces(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
