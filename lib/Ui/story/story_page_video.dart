//import 'dart:io';
//
//import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';
//import 'package:story_viewer/models/story_item.dart';
//import 'package:story_viewer/models/user.dart';
//import 'package:story_viewer/story_viewer.dart';
//import 'package:story_viewer/viewer.dart';
//import 'package:story_viewer/viewer_controller.dart';
//
//class Story extends StatefulWidget {
//  final String path;
//
//  Story({this.path});
//
//  @override
//  _StoryState createState() => _StoryState();
//}
//
//class _StoryState extends State<Story> {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      body: SingleChildScrollView(
//        child: Column(
//          children: [
//            Container(
//              width: MediaQuery.of(context).size.width,
//              height: MediaQuery.of(context).size.height,
//              child: StoryViewer(
//                displayerUserID: "displayer",
//                heroTag: "",
//                hasReply: true,
//                trusted: true,
//                stories: [
//                  StoryItemModel(
//                    displayDuration: Duration(seconds: 5),
//                    storyTime: DateTime(2020, 10),
//                    imageProvider: FileImage(File(widget.path)),
//                  ),
//                  StoryItemModel(
//                    imageProvider: NetworkImage(
//                        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'),
//                  ),
//                ],
//                userModel: UserModel(
//                  username: "Albaik Rest",
//                  profilePictureUrl:
//                      "https://cdn.extra.ie/wp-content/uploads/2020/03/11123037/Chloe-Agnew-2.jpg",
//                ),
//              ),
//            ),
//          ],
//        ),
//      ),
//    );
//  }
//}
import 'dart:io';

import 'package:best/Ui/add_story/add_story_screen.dart';
import 'package:best/core/constent.dart';
import 'package:flutter/material.dart';
import 'package:story_view/controller/story_controller.dart';
import 'package:story_view/story_view.dart';

class StoryVideo extends StatefulWidget {
  final String path;

  StoryVideo({this.path});

  @override
  _MoreStoriesState createState() => _MoreStoriesState();
}

class _MoreStoriesState extends State<StoryVideo> {
  final storyController = StoryController();
  TextEditingController controller = new TextEditingController();

  @override
  void dispose() {
    storyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: <Widget>[
          StoryView(
            storyItems: [
              StoryItem.pageVideoFile(File(widget.path),
                  controller: storyController, duration: Duration(seconds: 40)),
            ],
            onStoryShow: (s) {
              print("Showing a story");
            },
            onComplete: () {
              print("Completed a cycle");
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (BuildContext context) => AddStoryPage(),
                ),
              );
            },
            progressPosition: ProgressPosition.top,
            repeat: false,
            controller: storyController,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://cdn.extra.ie/wp-content/uploads/2020/03/11123037/Chloe-Agnew-2.jpg'),
                                  fit: BoxFit.cover),
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(60)),
                              border:
                                  Border.all(color: Colors.white, width: 1)),
                        ),
                        Text(
                          'Albaik Restaurant',
                          style: dataStyle.copyWith(
                              fontSize: 14, color: Colors.white),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          child: Icon(Icons.linear_scale,
                              color: Colors.white, size: 24),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          child: Container(
                            child: Icon(Icons.close,
                                color: Colors.white, size: 24),
                          ),
                          onTap: () {
                            Navigator.of(context).pop();
                            Navigator.of(context).pop();
                          },
                        )
                      ],
                    )
                  ],
                ),
                Container(
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.all(Radius.circular(32)),
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          height: 50,
                          width: 220,
                          child: TextField(
                            controller: controller,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Ripley to Harmony  …',
                              hintStyle: dataStyle.copyWith(
                                  fontSize: 14, color: Color(0xff222B45)),
                            ),
                            onTap: () {
                              storyController.pause();
                            },
                            onSubmitted: (text) {
                              print('Look $text');
                              controller.clear();
                              storyController.play();
                            },
                          ),
                        ),
                      ],
                    ))
              ],
            ),
          )
        ],
      )),
    );
  }
}
