import 'dart:io';

import 'package:best/core/constent.dart';
import 'package:best/record_audio/audio_recorder_console.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class DetailsChat extends StatefulWidget {
  @override
  _DetailsChatState createState() => _DetailsChatState();
}

class _DetailsChatState extends State<DetailsChat> {
  int lenght = 4;
  String x;

  @override
  void initState() {
    super.initState();
    x = 'Oh, hello! All perfect☺️ ☺️👍';
  }

  final picker = ImagePicker();
  bool imageDriver = false;
  String driver = '';
  File image_profile = null;

  _openGallery(BuildContext context) async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    this.setState(() {
      image_profile = File(pickedFile.path);
    });
    print('object $image_profile');
    Navigator.of(context).pop();
  }

  _openCamera(BuildContext context) async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);
    this.setState(() {
      image_profile = File(pickedFile.path);
    });
    Navigator.of(context).pop();
  }

  Future<void> _showChoiceDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Make a choice !"),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  GestureDetector(
                    child: Text('Gallery'),
                    onTap: () {
                      _openGallery(context);
                    },
                  ),
                  Padding(padding: EdgeInsets.all(8)),
                  GestureDetector(
                    child: Text('Camera '),
                    onTap: () {
                      _openCamera(context);
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }

  TextEditingController _controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  padding: EdgeInsets.only(left: 12),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        child: Container(
                          alignment: Alignment.center,
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.black,
                            size: 24,
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
                      Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://cdn.extra.ie/wp-content/uploads/2020/03/11123037/Chloe-Agnew-2.jpg'),
                                    fit: BoxFit.cover),
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(60)),
                                border: Border.all(
                                    color: Color(0xffFF635A), width: 2)),
                          ),
                          Container(
                            width: 16,
                            height: 16,
                            decoration: BoxDecoration(
                                color: Color(0xff00F86B),
                                border:
                                    Border.all(color: Colors.white, width: 4),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(45))),
                          )
                        ],
                      ),
                      Expanded(
                          child: Container(
                              width: 45,
                              child: ListTile(
                                title: Text(
                                  'Etham Walker',
                                  style: titleStyle.copyWith(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                ),
                                subtitle: Text(
                                  'Active Now',
                                  overflow: TextOverflow.ellipsis,
                                  style: titleStyle.copyWith(
                                      color: Color(0xff0BCC83),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w100),
                                ),
                              ))),
                      Container(
                          alignment: Alignment.center,
                          child: Image.asset(
                            'assets/image/option.png',
                            height: 40,
                          )),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      reverse: false,
                      itemCount: lenght,
                      itemBuilder: (context, index) {
                        return (index == 0)
                            ? Container(
                                width: 25,
                                alignment: Alignment.center,
                                height: 70,
                                margin: EdgeInsets.only(
                                    left: 18, right: 18, top: 18, bottom: 18),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset('assets/image/lock.png',
                                        height: 22),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      'Message to this chat and calls are now\nsecured with End to End encryption.',
                                      textAlign: TextAlign.center,
                                      style: titleStyle.copyWith(
                                          color: Color(0xff919BBF),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400),
                                    )
                                  ],
                                ),
                                decoration: BoxDecoration(
                                    color: Color(0xffF4F4F9),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12))),
                              )
                            : (index < 3)
                                ? leftBubble('Hi, Fine !')
                                : rightBubble(
                                    x,
                                    image_profile == null
                                        ? null
                                        : image_profile.path);
                      }),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 110,
                  color: Colors.white,
                  child: Column(
                    children: [
                      AudioRecorderConsole(
                        whenRecord: (filePath) {
                          //TODO hare u will get path of recorded file
                          print(filePath);
                        },
                      ),
                      Container(
                        color: Colors.grey[200],
                        height: 2,
                        width: MediaQuery.of(context).size.width,
                      ),
                      TextField(
                        textAlign: TextAlign.start,
                        controller: _controller,
                        decoration: InputDecoration(
                            hintText: 'Write a message',
                            border: InputBorder.none,
                            prefixIcon: InkWell(
                              child: Icon(
                                Icons.add,
                                size: 30,
                                color: Colors.black,
                              ),
                              onTap: () {
                                _showChoiceDialog(context);
                              },
                            ),
                            suffixIcon: InkWell(
                              child: Icon(
                                Icons.send,
                                size: 36,
                                color: Color(0xff0BCC83),
                              ),
                              onTap: () {
                                setState(() {
                                  lenght = lenght + 1;
                                  x = _controller.text.toString();
                                });
                                _controller.clear();
                              },
                            ),
                            hintStyle: titleStyle.copyWith(
                                fontSize: 18, color: Color(0xff707070))),
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }

  Widget leftBubble(String message) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://cdn.extra.ie/wp-content/uploads/2020/03/11123037/Chloe-Agnew-2.jpg'),
                          fit: BoxFit.cover),
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(60)),
                    ),
                  ),
                  Container(
                    width: 16,
                    height: 16,
                    decoration: BoxDecoration(
                        color: Color(0xff00F86B),
                        border: Border.all(color: Colors.white, width: 4),
                        borderRadius: BorderRadius.all(Radius.circular(45))),
                  )
                ],
              ),
              Container(
                //  width: MediaQuery.of(context).size.width-80,
                child: Text(
                  message,
                  style: titleStyle.copyWith(
                      color: Color(0xff121213), fontWeight: FontWeight.w300),
                ),
                padding:
                    EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
                margin: EdgeInsets.only(left: 8),
                decoration: BoxDecoration(
                    color: Color(0xffF4F4F9),
                    borderRadius: BorderRadius.all(Radius.circular(22))),
              )
            ],
          ),
          SizedBox(
            height: 5,
          ),
          // Padding(
          //   padding: EdgeInsets.symmetric(horizontal: 10),
          //   child: !message.isImg
          //       ? Container(
          //     decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(10),
          //       color: Colors.grey[400],
          //     ),
          //     child: Padding(
          //       padding: EdgeInsets.all(10),
          //       child: Text(
          //         message,
          //         style:titleStyle.copyWith(color: Colors.green),
          //       ),
          //     ),
          //   )
          //       : Align(
          //     alignment: Alignment.centerLeft,
          //     child: cachedNetworkImage(message),
          //   ),
          // ),
        ],
      ),
    );
  }

  Widget rightBubble(String message, String senderImg) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Text(
                message,
                style: titleStyle.copyWith(color: Colors.white),
              ),
              padding: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
              margin: EdgeInsets.only(right: 8),
              decoration: BoxDecoration(
                  color: Color(0xff0BCC83),
                  borderRadius: BorderRadius.all(Radius.circular(22))),
            ),
            SizedBox(
              height: 5,
            ),
            (senderImg != null)
                ? Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Image.file(
                        File(senderImg),
                        fit: BoxFit.cover,
                        width: MediaQuery.of(context).size.width - 100,
                        height: 140,
                      ),
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }

// Widget cachedNetworkImage(String mediaUrl) {
//   return Container(
//     child: FlatButton(
//       child: Material(
//         child: CachedNetworkImage(
//           placeholder: (context, url) => Container(
//             child: Center(
//               child: SpinKitThreeBounce(
//                 size: 30,
//                 color: Colors.white,
//               ),
//             ),
//             height: 200.0,
//             width: 200.0,
//             padding: EdgeInsets.all(70.0),
//             decoration: BoxDecoration(
//                 color: Color(0xffE8E8E8),
//                 borderRadius: BorderRadius.circular(8)),
//           ),
//           errorWidget: (context, url, error) => Material(
//             child: Image.asset(
//               'assets/images/img_not_available.jpeg',
//               height: 200.0,
//               fit: BoxFit.contain,
//             ),
//             borderRadius: BorderRadius.all(
//               Radius.circular(8.0),
//             ),
//             clipBehavior: Clip.hardEdge,
//           ),
//           imageUrl: mediaUrl,
//           height: 200.0,
//           fit: BoxFit.contain,
//         ),
//         borderRadius: BorderRadius.all(Radius.circular(8.0)),
//         clipBehavior: Clip.hardEdge,
//       ),
//       onPressed: () {
//         Navigator.push(
//             context,
//             MaterialPageRoute(
//                 builder: (context) => FullPhoto(url: mediaUrl)));
//       },
//       padding: EdgeInsets.all(0),
//     ),
//     margin: EdgeInsets.only(bottom: 20.0, right: 10.0),
//   );
// }

// Widget ChooseImageDialog() {
//   return Dialog(
//     shape: RoundedRectangleBorder(
//       borderRadius: BorderRadius.circular(15),
//     ),
//     child: Container(
//       height: 100,
//       child: Material(
//         borderRadius: BorderRadius.circular(15),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             GestureDetector(
//               onTap: () {
//                 Navigator.of(context).pop(true);
//               },
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Icon(
//                     MdiIcons.imagePlus,
//                     size: 40,
//                   ),
//                   SizedBox(
//                     height: 5,
//                   ),
//                   AutoSizeText(
//                     'المعرض',
//                     style: dataTextStyle,
//                     maxFontSize: 18,
//                     minFontSize: 16,
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               color: Colors.grey,
//               width: 2,
//             ),
//             GestureDetector(
//               onTap: () {
//                 Navigator.of(context).pop(false);
//               },
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Icon(
//                     MdiIcons.cameraPlus,
//                     size: 40,
//                   ),
//                   SizedBox(
//                     height: 5,
//                   ),
//                   AutoSizeText(
//                     'الكاميرا',
//                     style: dataTextStyle,
//                     maxFontSize: 18,
//                     minFontSize: 16,
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     ),
//   );
// }

}
