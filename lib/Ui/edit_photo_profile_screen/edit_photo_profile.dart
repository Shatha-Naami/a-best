import 'dart:io';

import 'package:best/Ui/add_poll_story/add_poll_story.dart';
import 'package:best/Ui/add_text_story/add_text_story.dart';
import 'package:best/Ui/choose_type_story/choose_type_story.dart';
import 'package:best/Ui/restaurant_profile/restaurant_profile_page.dart';
import 'package:best/Ui/story/story_page_video.dart';
import 'package:best/CameraVideoRecorder.dart';
import 'package:best/core/constent.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:media_gallery/media_gallery.dart';

class EditPhotoProfile extends StatefulWidget {
  @override
  _EditPhotoProfileState createState() => _EditPhotoProfileState();
}

class _EditPhotoProfileState extends State<EditPhotoProfile> {
  show(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            contentPadding: EdgeInsets.zero,
            backgroundColor: Colors.white,
            titlePadding: EdgeInsets.zero,
            title: Center(
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(top: 24, bottom: 10),
                width: MediaQuery.of(context).size.width,
                child: Text(
                  'Delete a Story',
                  style: dataStyle.copyWith(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
            ),
            content: Container(
                decoration: new BoxDecoration(
                  //color: Colors.white,
                    borderRadius: new BorderRadius.only(
                      bottomLeft: const Radius.circular(20.0),
                      bottomRight: const Radius.circular(20.0),
                    )),
                height: 150,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: <Widget>[
                    Text(
                      'This will also delete your story',
                      style: dataStyle.copyWith(fontSize: 15),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20, bottom: 10),
                      height: 2,
                      color: Colors.grey[200],
                    ),
                    Text(
                      'Delete a Story',
                      style:
                      dataStyle.copyWith(color: Colors.red, fontSize: 19),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5, bottom: 12),
                      height: 2,
                      color: Colors.grey[200],
                    ),
                    Text(
                      'Discard story',
                      style: dataStyle.copyWith(fontSize: 19),
                    )
                  ],
                )),
          );
        });
  }

  show2(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            contentPadding: EdgeInsets.zero,
            backgroundColor: Colors.white,
            titlePadding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
            ),
            content: Container(
                decoration: new BoxDecoration(
                  //color: Colors.white,
                    borderRadius: new BorderRadius.only(
                      bottomLeft: const Radius.circular(20.0),
                      bottomRight: const Radius.circular(20.0),
                    )),
                height: 160,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(top: 12)),
                    Text(
                      'More Options',
                      style: dataStyle.copyWith(fontSize: 15),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20, bottom: 10),
                      height: 2,
                      color: Colors.grey[200],
                    ),
                    Text(
                      'Delete a Story',
                      style:
                      dataStyle.copyWith(color: Colors.red, fontSize: 19),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5, bottom: 12),
                      height: 2,
                      color: Colors.grey[200],
                    ),
                    Text(
                      'Discard story',
                      style: dataStyle.copyWith(fontSize: 19),
                    )
                  ],
                )),
          );
        });
  }

  var _listControllerSlider = ScrollController();
  File image_profile;
  final picker = ImagePicker();

  void bottomSheetCameraOrVideo(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (ctx) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.16,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: FlatButton(
                    onPressed: () {
                      Navigator.pop(context);
                      _openCamera(context);
                    },
                    child: Text('Camera'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: FlatButton(
                    onPressed: () {
                 //CameraExampleHome
                    },
                    child: Text('Video'),
                  ),
                ),
              ],
            ),
          );
        });
  }

  Future<void> _openCamera(BuildContext context) async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);
    this.setState(() {
      try {
        image_profile = File(pickedFile.path);
      } catch (e) {
        print('object${e.toString()}');
      }
    });
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => ChooseTypeStory(path: image_profile.path)),
    );
  }

  Future<List<Media>> getImages() async {
    final List<MediaCollection> collections =
    await MediaGallery.listMediaCollections(
      mediaTypes: [MediaType.video, MediaType.image],
    );

    final MediaPage imagePage = await collections[0].getMedias(
      mediaType: MediaType.image,
      take: 70,
    );
    final MediaPage videoPage = await collections[0].getMedias(
      mediaType: MediaType.video,
      take: 10,
    );
    final List<Media> allMedias = [
      ...imagePage.items,
      ...videoPage.items,
    ]..sort((x, y) => y.creationDate.compareTo(x.creationDate));

//    final allImages = collections[0];
//    final imagePage = await allImages.getMedias(
//    //  mediaType: MediaType.image,
//      take: 50,
//    );

    return allMedias;
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
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
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(23), topLeft: Radius.circular(23)),
          ),
          margin: EdgeInsets.only(top: 45),
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 18, left: 22, right: 22),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    InkWell(
                      child: Text('Cancel',
                          style: dataStyle.copyWith(fontSize: 18)),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RestaurantProfile()),
                        );
                      },
                    ),
                    InkWell(
                      child: Column(
                        children: <Widget>[
                          Text('Add to Story',
                              style: dataStyle.copyWith(fontSize: 20)),
                          Text('Recents',
                              style: dataStyle.copyWith(fontSize: 18)),
                        ],
                      ),
                      onTap: () {
//                        Navigator.push(
//                          context,
//                          MaterialPageRoute(builder: (context) => Story()),
//                        );
                      },
                    ),
                    InkWell(
                      child:
                      Text('Post', style: dataStyle.copyWith(fontSize: 18)),
                      onTap: () {
                        // show(context);
                      },
                    ),
                  ],
                ),
              ),
              Container(
                height: 160,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    controller: _listControllerSlider,
                    itemCount: 3,
                    itemBuilder: (ctx, index) {
                      return (index == 0)
                          ? InkWell(
                        child: Container(
                          width: 140,
                          margin: EdgeInsets.only(
                              right: 12, left: 12, top: 32),
                          padding: EdgeInsets.only(right: 16, left: 16),
                          decoration: BoxDecoration(
                              color: Color(0xffECECEC),
                              borderRadius:
                              BorderRadius.all(Radius.circular(12))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.asset(
                                'assets/image/camera_2.png',
                                width: 35,
                                height: 35,
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                'Open camera',
                                style: dataStyle.copyWith(fontSize: 17),
                              ),
                            ],
                          ),
                        ),
                        onTap: () async {
                          bottomSheetCameraOrVideo(context);
                          // _showChoiceDialog(context);
                          // _openCamera(context);
                        },
                      )
                          : (index == 1)
                          ? InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AddTextStory()),
                          );
                        },
                        child: Container(
                          width: 140,
                          margin: EdgeInsets.only(
                              right: 12, left: 12, top: 32),
                          padding:
                          EdgeInsets.only(right: 16, left: 16),
                          decoration: BoxDecoration(
                              color: Color(0xffECECEC),
                              borderRadius: BorderRadius.all(
                                  Radius.circular(12))),
                          child: Column(
                            crossAxisAlignment:
                            CrossAxisAlignment.center,
                            mainAxisAlignment:
                            MainAxisAlignment.center,
                            children: <Widget>[
                              Image.asset(
                                'assets/image/text.png',
                                width: 40,
                                height: 40,
                                color: Colors.black,
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                'Writing Text',
                                style:
                                dataStyle.copyWith(fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                      )
                          : InkWell(
                        child: Container(
                          width: 140,
                          margin: EdgeInsets.only(
                              right: 12, left: 12, top: 32),
                          padding:
                          EdgeInsets.only(right: 16, left: 16),
                          decoration: BoxDecoration(
                              color: Color(0xffECECEC),
                              borderRadius: BorderRadius.all(
                                  Radius.circular(12))),
                          child: Column(
                            crossAxisAlignment:
                            CrossAxisAlignment.center,
                            mainAxisAlignment:
                            MainAxisAlignment.center,
                            children: <Widget>[
                              Image.asset(
                                'assets/image/poll.png',
                                width: 35,
                                height: 35,
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                'Add a poll',
                                style:
                                dataStyle.copyWith(fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AddPollStory()),
                          );
                        },
                      );
                    }),
              ),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  margin: EdgeInsets.only(top: 18, left: 8, right: 8),
                  child: FutureBuilder<List<Media>>(
                    future: getImages(),
                    builder: (_, snapshot) {
                      if (snapshot.hasData) {
                        return GridView(
                          children: snapshot.data
                              .map((e) => FutureBuilder(
                              future: e.getThumbnail(),
                              builder: (context,
                                  AsyncSnapshot<List<int>> snapshot) {
                                if (snapshot.hasData) {
                                  return (e.mediaType == MediaType.video)
                                      ? InkWell(
                                    child: Padding(
                                      padding: EdgeInsets.all(2),
                                      child: Stack(
                                        alignment: Alignment.center,
                                        fit: StackFit.expand,
                                        children: <Widget>[
                                          Image.memory(
                                            snapshot.data,
                                            fit: BoxFit.fill,
                                            height: 220,
                                          ),
                                          Icon(
                                            Icons.play_circle_outline,
                                            color: Colors.white,
                                            size: 40,
                                          )
                                        ],
                                      ),
                                    ),
                                    onTap: () async {
                                      final file = await e.getFile();
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                StoryVideo(
                                                    path: file.path)),
                                      );
                                    },
                                  )
                                      : InkWell(
                                    child: Padding(
                                      padding: EdgeInsets.all(2),
                                      child: Image.memory(
                                        snapshot.data,
                                        fit: BoxFit.fill,
                                        height: 220,
                                      ),
                                    ),
                                    onTap: () async {
                                      final file = await e.getFile();
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ChooseTypeStory(
                                                    path: file.path)),
                                      );
                                    },
                                  );
                                }
                                return Container();
                              }))
                              .toList(),
                          gridDelegate:
                          SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3),
                          padding: const EdgeInsets.all(4.0),
                        );
                      }
                      return CircularProgressIndicator(
                        backgroundColor: greenColor,
                      );
                    },
                  ),
                ),
                flex: 1,
              )
            ],
          ),
        ),
      ),
    );
  }
}
