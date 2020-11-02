//import 'dart:io';
//
//import 'package:best/core/constent.dart';
//import 'package:flutter/material.dart';
//import 'package:fluttertoast/fluttertoast.dart';
//import 'package:gallery_saver/gallery_saver.dart';
//import 'package:image_picker/image_picker.dart';
//import 'package:polls/polls.dart';
//
////class MyApp extends StatefulWidget {
////  @override
////  _MyAppState createState() => _MyAppState();
////}
////
////class _MyAppState extends State<MyApp> {
////  String firstButtonText = 'Take photo';
////  String secondButtonText = 'Record video';
////  double textSize = 20;
////  String albumName = 'Media';
////
////  @override
////  Widget build(BuildContext context) {
////    return MaterialApp(
////        home: Scaffold(
////      body: Container(
////        color: Colors.white,
////        child: Column(
////          children: <Widget>[
////            Flexible(
////              flex: 1,
////              child: Container(
////                child: SizedBox.expand(
////                  child: RaisedButton(
////                    color: Colors.blue,
////                    onPressed: () {
////                      print('object');
////                      _takePhoto();
////                    },
////                    child: Text(firstButtonText,
////                        style:
////                            TextStyle(fontSize: textSize, color: Colors.white)),
////                  ),
////                ),
////              ),
////            ),
////            Flexible(
////              child: Container(
////                  child: SizedBox.expand(
////                child: RaisedButton(
////                  color: Colors.white,
////                  onPressed: _recordVideo,
////                  child: Text(secondButtonText,
////                      style: TextStyle(
////                          fontSize: textSize, color: Colors.blueGrey)),
////                ),
////              )),
////              flex: 1,
////            )
////          ],
////        ),
////      ),
////    ));
////  }
////
////  void _takePhoto() async {
////    ImagePicker.pickImage(source: ImageSource.camera)
////        .then((File recordedImage) {
////      if (recordedImage != null && recordedImage.path != null) {
////        startDownload();
////        GallerySaver.saveImage(recordedImage.path, albumName: albumName)
////            .then((bool success) {
////          endDownload();
////        });
////      }
////    });
////  }
////
////  void startDownload() {
////    Fluttertoast.showToast(
////        msg: "Start Download..",
////        toastLength: Toast.LENGTH_SHORT,
////        gravity: ToastGravity.BOTTOM,
////        timeInSecForIos: 1,
////        backgroundColor: Colors.red,
////        textColor: Colors.white,
////        fontSize: 16.0);
////  }
////
////  void endDownload() {
////    Fluttertoast.showToast(
////        msg: "Success Download",
////        toastLength: Toast.LENGTH_SHORT,
////        gravity: ToastGravity.BOTTOM,
////        timeInSecForIos: 1,
////        backgroundColor: greenColor,
////        textColor: Colors.white,
////        fontSize: 16.0);
////  }
////  void _saveNetworkImage() async {
////    String path =
////        '/Users/mac/Library/Developer/CoreSimulator/Devices/6DB95636-955B-4054-81D4-2C91645501FF/data/Containers/Data/Application/1833311C-4A31-40F1-B85E-C4205F984BDC/Library/Caches/montreal-canada-july-11-2019-600w-1450023539.jpg';
////    GallerySaver.saveImage(path, albumName: albumName).then((bool success) {
////      setState(() {
////        print('Image is saved');
////      });
////    });
////  }
////  void _recordVideo() async {
////    ImagePicker.pickVideo(source: ImageSource.camera)
////        .then((File recordedVideo) {
////      if (recordedVideo != null && recordedVideo.path != null) {
////        setState(() {
////          secondButtonText = 'saving in progress...';
////        });
////        GallerySaver.saveVideo(recordedVideo.path, albumName: albumName)
////            .then((bool success) {
////          setState(() {
////            secondButtonText = 'video saved!';
////          });
////        });
////      }
////    });
////  }
////
////  // ignore: unused_element
////  void _saveNetworkVideo() async {
////    String path =
////        'https://sample-videos.com/video123/mp4/720/big_buck_bunny_720p_1mb.mp4';
////    GallerySaver.saveVideo(path, albumName: albumName).then((bool success) {
////      setState(() {
////        print('Video is saved');
////      });
////    });
////  }
////
////  // ignore: unused_element
////
////}
//
//class PollView extends StatefulWidget {
//  @override
//  _PollViewState createState() => _PollViewState();
//}
//
//class _PollViewState extends State<PollView> {
//
//  double option1 = 2.0;
//  double option2 = 0.0;
//  double option3 = 2.0;
//  double option4 = 3.0;
//
//  String user = "king@mail.com";
//  Map usersWhoVoted = {'sam@mail.com': 3, 'mike@mail.com' : 4, 'john@mail.com' : 1, 'kenny@mail.com' : 1};
//  String creator = "eddy@mail.com";
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      body: Container(
//        child: Polls(
//          children: [
//            // This cannot be less than 2, else will throw an exception
//            Polls.options(title: 'Cairo', value: option1),
//            Polls.options(title: 'Mecca', value: option2),
//            Polls.options(title: 'Denmark', value: option3),
//            Polls.options(title: 'Mogadishu', value: option4),
//          ], question: Text('how old are you?'),
//          currentUser: this.user,
//          creatorID: this.creator,
//          voteData: usersWhoVoted,
//          userChoice: usersWhoVoted[this.user],
//          onVoteBackgroundColor: Colors.blue,
//          leadingBackgroundColor: Colors.blue,
//          backgroundColor: Colors.white,
//          onVote: (choice) {
//            print(choice);
//            setState(() {
//              this.usersWhoVoted[this.user] = choice;
//            });
//            if (choice == 1) {
//              setState(() {
//                option1 += 1.0;
//              });
//            }
//            if (choice == 2) {
//              setState(() {
//                option2 += 1.0;
//              });
//            }
//            if (choice == 3) {
//              setState(() {
//                option3 += 1.0;
//              });
//            }
//            if (choice == 4) {
//              setState(() {
//                option4 += 1.0;
//              });
//            }
//          },
//        ),
//      ),
//    );
//  }
//}
