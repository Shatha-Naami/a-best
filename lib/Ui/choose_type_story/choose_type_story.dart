import 'dart:io';

import 'package:best/Ui/add_text_story/add_text_story.dart';
import 'package:best/Ui/story/story_page.dart';
import 'package:best/Ui/test.dart';
import 'package:flutter/material.dart';

import 'package:best/core/constent.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:image_picker/image_picker.dart';

class ChooseTypeStory extends StatefulWidget {
  final String path;

  ChooseTypeStory({this.path});

  @override
  _ChooseTypeStoryState createState() => _ChooseTypeStoryState();
}

class _ChooseTypeStoryState extends State<ChooseTypeStory> {
  String albumName = 'a Best App';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
            height: double.infinity,
            width: double.infinity,
            child: Stack(
              children: <Widget>[

                Image.file(
                  File(widget.path),
                  fit: BoxFit.cover,
                  height: double.infinity,
                  width: double.infinity,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          InkWell(
                            child: Icon(
                              Icons.arrow_back,
                              size: 28,
                              color: Colors.white,
                            ),
                            onTap: () {
                              if (Navigator.canPop(context)) {
                                Navigator.pop(context);
                              } else {
                                SystemNavigator.pop();
                              }
                            },
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              // TODO
                              Container(
                                margin: EdgeInsets.only(top: 32),
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      'Stickers',
                                      style: dataStyle.copyWith(
                                          fontSize: 20, color: Colors.white),
                                    ),
                                    SizedBox(
                                      width: 14,
                                    ),
                                    Image.asset(
                                      'assets/image/sticker.png',
                                      width: 32,
                                      height: 32,
                                    )
                                  ],
                                ),
                              ),
                              InkWell(
                                child: Container(
                                  margin: EdgeInsets.only(top: 32),
                                  child: Row(
                                    children: <Widget>[
                                      Text(
                                        'Text',
                                        style: dataStyle.copyWith(
                                            fontSize: 20, color: Colors.white),
                                      ),
                                      SizedBox(
                                        width: 14,
                                      ),
                                      Image.asset(
                                        'assets/image/text.png',
                                        width: 32,
                                        height: 32,
                                      )
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            AddTextStory(path: widget.path)),
                                  );
                                },
                              ),
                              // TODO
                              Container(
                                margin: EdgeInsets.only(top: 32),
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      'Tag people',
                                      style: dataStyle.copyWith(
                                          fontSize: 20, color: Colors.white),
                                    ),
                                    SizedBox(
                                      width: 14,
                                    ),
                                    Image.asset('assets/image/tag.png',
                                        width: 28, height: 28)
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          InkWell(
                            child: Image.asset(
                              'assets/image/download.png',
                              width: 32,
                              height: 32,
                            ),
                            onTap: () {
                              _saveImage(widget.path);
                            },
                          ),
                          InkWell(
                            child: Container(
                              alignment: Alignment.center,
                              width: 140,
                              padding: EdgeInsets.all(14),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(22)),
                                  color: Colors.white),
                              child: Text(
                                'Share to Story',
                                style: dataStyle.copyWith(
                                    color: greenColor, fontSize: 17),
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Story(path: widget.path)),
                              );
                            },
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }


  void _saveImage(String path) async {
    await ImageGallerySaver.saveImage(File(path).readAsBytesSync())
        .then((value) {
      endDownload();
    });
  }

  void endDownload() {
    Fluttertoast.showToast(
        msg: "Success Download",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIos: 1,
        backgroundColor: greenColor,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
