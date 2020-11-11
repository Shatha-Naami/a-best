import 'package:best/Ui/edit_chats_screen/edit_chats.dart';
import 'package:best/core/constent.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:random_color/random_color.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:best/model/message.dart';

class ChatsScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ChatsScreen> {
  var _listControllerSlider = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          color: Colors.white,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 30,
                margin: EdgeInsets.fromLTRB(
                  20.0,
                  20.0,
                  20.0,
                  0.0,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text(
                        'Chats',
                        style: titleStyle.copyWith(
                          color: Colors.black,
                          fontSize: 30,
                        ),
                      ),
                    ),
                    InkWell(
                      child: Container(
                        child: Image.asset(
                          'assets/image/edit.png',
                          width: 40,
                          height: 40,
                          color: Colors.black,
                        ),
                      ),
                      onTap: () {
                        pushNewScreen(
                          context,
                          screen: EditChatsScreen(),
                          withNavBar: false, // OPTIONAL VALUE. True by default.
                          pageTransitionAnimation:
                              PageTransitionAnimation.cupertino,
                        );
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => EditChatsScreen()),
                        // );
                      },
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 22,
              ),
              Expanded(
                child: Container(
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      // controller: _listControllerSlider,
                      itemCount: chats.length,
                      itemBuilder: (BuildContext context, int index) {
                        final Message chat = chats[index];
                        return Slidable(
                          actionPane: SlidableDrawerActionPane(),
                          actionExtentRatio: 0.25,
                          actions: [
                            IconSlideAction(
                              caption: 'Archive',
                              color: Color(0xFF9BA5BF),
                              icon: Icons.archive,
                            ),
                          ],
                          secondaryActions: <Widget>[
                            IconSlideAction(
                              caption: 'Delete',
                              color: Colors.red,
                              icon: Icons.delete,
                              onTap: () {
                                setState(() {
                                  chats.removeAt(index);
                                  Scaffold.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text("Message has deleted"),
                                    ),
                                  );
                                });
                              },
                            ),
                          ],
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  margin:
                                      EdgeInsets.fromLTRB(10.0, 0.0, 5.0, 5.0),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 5.0,
                                    vertical: 8.0,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                      5.0,
                                      0.0,
                                      5.0,
                                      0.0,
                                    ),
                                    child: Row(
                                      children: [
                                        Row(
                                          children: <Widget>[
                                            Stack(
                                              alignment: Alignment.bottomLeft,
                                              children: [
                                                CircleAvatar(
                                                  radius: 37.0,
                                                  backgroundColor: RandomColor()
                                                          .randomColor(
                                                        colorSaturation:
                                                            ColorSaturation
                                                                .highSaturation,
                                                      ),
                                                  child: CircleAvatar(
                                                    radius: 36.0,
                                                    backgroundColor:
                                                        Color(0xFFFFFFFF),
                                                    child: CircleAvatar(
                                                      radius: 35.0,
                                                      backgroundImage:
                                                          AssetImage(
                                                        'assets/image/girl.png',
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  width: 20,
                                                  height: 20,
                                                  decoration: BoxDecoration(
                                                    color: chat.sender.online
                                                        ? Color(0xFF0BCC83)
                                                        : Color(0xFFD5D4D4),
                                                    border: Border.all(
                                                      color: Colors.white,
                                                      width: 5,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(45),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(width: 15.0),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Text(
                                                  chat.sender.name,
                                                  style: TextStyle(
                                                    fontSize: 17.0,
                                                    color: Color(0xFF222B45),
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                                SizedBox(height: 5.0),
                                                Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.45,
                                                  child: Text(
                                                    chat.text,
                                                    style: TextStyle(
                                                      fontSize: 14.0,
                                                      color: chat.unread
                                                          ? Color(0XFF000000)
                                                          : Color(0XFF78849E),
                                                    ),
                                                    maxLines: 2,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        SizedBox(width: 30.0),
                                        Column(
                                          children: <Widget>[
                                            Text(chat.time),
                                            SizedBox(height: 10.0),
                                            Container(
                                              padding: EdgeInsets.all(5.0),
                                              width: 35.0,
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                color: chat.unread
                                                    ? Color(0xFF0BCC83)
                                                    : Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(30.0),
                                              ),
                                              child: chat.unread
                                                  ? Text(
                                                      '18',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFFFFFFFF),
                                                        fontSize: 13,
                                                      ),
                                                    )
                                                  : SvgPicture.asset(
                                                      'assets/image/typing.svg',
                                                    ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                color: Colors.grey[200],
                                margin: EdgeInsets.only(
                                  left: 25,
                                  right: 25,
                                ),
                                height: 1,
                                width: MediaQuery.of(context).size.width,
                              )
                            ],
                          ),
                        );
                      }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
