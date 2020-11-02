import 'package:best/Ui/details_chat_screen/details_chat.dart';
import 'package:best/core/constent.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swipe_action_cell/core/cell.dart';
import 'package:flutter_swipe_action_cell/core/controller.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class EditChatsScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class Model {
  String id = UniqueKey().toString();
  int index;

  @override
  String toString() {
    return index.toString();
  }
}

class _ProfileScreenState extends State<EditChatsScreen> {
  var _listControllerSlider = ScrollController();
  int _radioValue1 = -1;

  int condition = 1;

  void _handleRadioValueChange1(int value) {
    setState(() {
      _radioValue1 = value;
    });
  }

  List<Model> list = List.generate(4, (index) {
    return Model()..index = index;
  });

  SwipeActionController controller;

  @override
  void initState() {
    super.initState();
    controller = SwipeActionController(selectedIndexPathsChangeCallback:
        (changedIndexPaths, selected, currentCount) {
      print(
          'cell at ${changedIndexPaths.toString()} is/are ${selected ? 'selected' : 'unselected'} ,current selected count is $currentCount');

      ///I just call setState() to update simply in this example.
      ///But the whole page will be rebuilt.
      ///So when you are developing,you'd better update a little piece
      ///of UI sub tree for best performance....

      setState(() {});
    });
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
                color: Colors.grey.withOpacity(0.4),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 2), // changes position of shadow
              ),
            ],
          ),
          margin: EdgeInsets.only(top: 65),
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
                      onTap: () {},
                    ),
                    InkWell(
                      child: Column(
                        children: <Widget>[
                          Text('Choose a contact',
                              style: dataStyle.copyWith(fontSize: 20)),
                        ],
                      ),
                      onTap: () {
//
                      },
                    ),
                    InkWell(
                      child:
                          Text('Done', style: dataStyle.copyWith(fontSize: 18)),
                      onTap: () {
                        pushNewScreen(
                          context,
                          screen: DetailsChat(),
                          withNavBar: false, // OPTIONAL VALUE. True by default.
                          pageTransitionAnimation:
                              PageTransitionAnimation.cupertino,
                        );
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => DetailsChat()),
                        // );
                      },
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 55,
                margin:
                    EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 16),
                // padding: EdgeInsets.only(top: 16, bottom: 16),
                decoration: BoxDecoration(
                  color: Color(0xffF4F4F4),
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Search',
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.search,
                        size: 32,
                      ),
                      hintStyle: titleStyle.copyWith(color: Color(0xff78849E))),
                ),
              ),
              Container(
                child: Row(
                  children: [
                    SizedBox(
                      width: 28,
                    ),
                    Container(
                      child: Text(
                        'People',
                        style: titleStyle.copyWith(color: Color(0xff0BCC83)),
                      ),
                    ),
                    SizedBox(
                      width: 45,
                    ),
                    Container(
                      child: Text(
                        'Place',
                        style: titleStyle.copyWith(color: Color(0xff8A98BA)),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Expanded(
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: list.length,
                  itemBuilder: (context, index) {
                    return _item(index);
                  },
                ),
              ),

              // Expanded(
              //   child: ListView.builder(
              //       scrollDirection: Axis.vertical,
              //       shrinkWrap: true,
              //       controller: _listControllerSlider,
              //       itemCount: 7,
              //       itemBuilder: (BuildContext context, index) {
              //         return (index < 3)
              //             ? Container(
              //                 margin: EdgeInsets.only(
              //                     left: 12, right: 12),
              //             padding: EdgeInsets.only(top: 8,bottom: 8),
              //
              //             //margin: EdgeInsets.only(bottom: 4),
              //                 color: Colors.white,
              //                 child:Column(
              //                   children: [
              //                     Row(
              //                       children: [
              //                         Stack(
              //                           alignment: Alignment.bottomLeft,
              //                           children: [
              //                             Container(
              //                               width: 55,
              //                               height: 55,
              //                               decoration: BoxDecoration(
              //                                   image: DecorationImage(
              //                                       image: NetworkImage(
              //                                           'https://cdn.extra.ie/wp-content/uploads/2020/03/11123037/Chloe-Agnew-2.jpg'),
              //                                       fit: BoxFit.cover),
              //                                   color: Colors.white,
              //                                   borderRadius: BorderRadius.all(
              //                                       Radius.circular(60)),
              //                                   border: Border.all(
              //                                       color: Color(0xffFF635A),
              //                                       width: 2)),
              //                             ),
              //                             Container(
              //                               width: 20,
              //                               height: 20,
              //                               decoration: BoxDecoration(
              //                                   color: Color(0xff00F86B),
              //                                   border: Border.all(
              //                                       color: Colors.white, width: 5),
              //                                   borderRadius: BorderRadius.all(
              //                                       Radius.circular(45))),
              //                             )
              //                           ],
              //                         ),
              //                         Expanded(
              //                           child: Container(
              //                             margin:
              //                             EdgeInsets.only(right: 12, left: 12),
              //                             child: Text(
              //                               'Etham Walker',
              //                               overflow: TextOverflow.ellipsis,
              //                               style: titleStyle.copyWith(
              //                                   color: Colors.black,
              //                                   fontSize: 18,
              //                                   fontWeight: FontWeight.w100),
              //                             ),
              //                           ),
              //                         ),
              //                         Container(
              //                           alignment: Alignment.topCenter,
              //                           width: 55,
              //                           height: 50,
              //                           child: Transform.scale(
              //                             scale: 1.2,
              //                             child: Radio(
              //                               value: index,
              //                               activeColor: Color(0xff0BCC83),
              //                               groupValue: _radioValue1,
              //                               onChanged: _handleRadioValueChange1,
              //                             ),
              //                           ),
              //                         )
              //                       ],
              //                     ),
              //                     SizedBox(height: 18,),
              //                     Container(
              //                       color: Colors.grey[200],
              //
              //                       margin: EdgeInsets.only(left: 12,right: 12),
              //                       height: 2,
              //                       width: MediaQuery.of(context).size.width,
              //                     )
              //                   ],
              //                 )
              //               )
              //             : Container(
              //             margin: EdgeInsets.only(
              //                 left: 12, right: 12),
              //             padding: EdgeInsets.only(top: 8,bottom: 8),
              //
              //             color: Colors.white,
              //                 child:Column(
              //                   children: [
              //                     Row(
              //                       children: [
              //                         Stack(
              //                           alignment: Alignment.bottomLeft,
              //                           children: [
              //                             Container(
              //                               width: 55,
              //                               height: 55,
              //                               decoration: BoxDecoration(
              //                                   image: DecorationImage(
              //                                       image: NetworkImage(
              //                                           'https://cdn.extra.ie/wp-content/uploads/2020/03/11123037/Chloe-Agnew-2.jpg'),
              //                                       fit: BoxFit.cover),
              //                                   color: Colors.white,
              //                                   borderRadius: BorderRadius.all(
              //                                       Radius.circular(60)),
              //                                   border: Border.all(
              //                                       color: Color(0xffFF635A),
              //                                       width: 2)),
              //                             ),
              //                             Container(
              //                               width: 20,
              //                               height: 20,
              //                               decoration: BoxDecoration(
              //                                   color: Color(0xff00F86B),
              //                                   border: Border.all(
              //                                       color: Colors.white, width: 5),
              //                                   borderRadius: BorderRadius.all(
              //                                       Radius.circular(45))),
              //                             )
              //                           ],
              //                         ),
              //                         Expanded(
              //                           child: Container(
              //                             margin:
              //                             EdgeInsets.only(right: 12, left: 12),
              //                             child: Text(
              //                               'Etham Walker',
              //                               overflow: TextOverflow.ellipsis,
              //                               style: titleStyle.copyWith(
              //                                   color: Colors.black,
              //                                   fontSize: 18,
              //                                   fontWeight: FontWeight.w100),
              //                             ),
              //                           ),
              //                         ),
              //                         Container(
              //                           alignment: Alignment.topCenter,
              //                           width: 55,
              //                           height: 50,
              //                           child: Transform.scale(
              //                             scale: 1.2,
              //                             child: Radio(
              //                               value: index,
              //                               activeColor: Color(0xff0BCC83),
              //                               groupValue: _radioValue1,
              //                               onChanged: _handleRadioValueChange1,
              //                             ),
              //                           ),
              //                         ),
              //                       ],
              //                     ),
              //                     SizedBox(height: 18,),
              //                     Container(
              //                       color: Colors.grey[200],
              //
              //                       margin: EdgeInsets.only(left: 12,right: 12),
              //                       height: 2,
              //                       width: MediaQuery.of(context).size.width,
              //                     )
              //                   ],
              //                 )
              //               );
              //       }),
              // ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> numberExistsDialog(BuildContext context) {
    var numberDialog = Align(
      alignment: Alignment(0, 1),
      child: Material(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Container(
          height: 200,
          child: Column(
            children: [
              Container(
                  decoration: new BoxDecoration(
                      //color: Colors.white,
                      borderRadius: new BorderRadius.only(
                    bottomLeft: const Radius.circular(20.0),
                    bottomRight: const Radius.circular(20.0),
                  )),
                  height: 120,
                  margin: EdgeInsets.only(right: 18, left: 18),
                  width: MediaQuery.of(context).size.width - 60,
                  child: Column(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(top: 12, bottom: 0),
                        child: Text(
                          'Are you sure to permanently delete this conversation?',
                          textAlign: TextAlign.center,
                          style: dataStyle.copyWith(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 14, bottom: 16),
                        height: 2,
                        color: Colors.grey[200],
                      ),
                      InkWell(
                        child: Text(
                          'Delete',
                          style: dataStyle.copyWith(
                              color: Colors.red, fontSize: 19),
                        ),
                        onTap: () {
                          condition = 1;
                          Navigator.pop(context);
                        },
                      )
                    ],
                  )),
              Container(
                  decoration: new BoxDecoration(
                      //color: Colors.white,
                      borderRadius: new BorderRadius.only(
                    bottomLeft: const Radius.circular(20.0),
                    bottomRight: const Radius.circular(20.0),
                  )),
                  height: 80,
                  margin: EdgeInsets.only(right: 18, left: 18),
                  width: MediaQuery.of(context).size.width - 60,
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 18, bottom: 20),
                        height: 2,
                        color: Colors.grey[200],
                      ),
                      InkWell(
                        child: Text(
                          'Cancel',
                          style: dataStyle.copyWith(
                              color: Colors.black,
                              fontSize: 19,
                              fontWeight: FontWeight.w600),
                        ),
                        onTap: () {
                          condition = 2;
                          Navigator.pop(context);
                        },
                      )
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return numberDialog;
      },
    );
  }

  Widget _item(int index) {
    return SwipeActionCell(
      controller: controller,
      index: index,
      key: ValueKey(list[index]),
      performsFirstActionWithFullSwipe: true,
      trailingActions: [
        SwipeAction(
            title: "delete",
            //     nestedAction: SwipeNestedAction(title: "confirm"),
            widthSpace: 90,
            onTap: (handler) async {
              action(bool stat)async{
                await handler(stat);
                list.removeAt(index);
              }
              action2(bool stat)async{
                await handler(stat);
              }
              numberExistsDialog(context).then((value) async {
                (condition == 1)
                    ? action(true)
                    : action2(false);

                print('hhhhh ${list.length}');
              });
              // show(context).then((value) async{
              //   await handler(true);
              //   list.removeAt(index);
              // });

              //    setState(() {});
            }),
        //   SwipeAction(title: "action2", color: Colors.grey, onTap: (handler) {}),
      ],
      // leadingActions: [
      //   SwipeAction(
      //       title: "delete",
      //       onTap: (handler) async {
      //         await handler(true);
      //         list.removeAt(index);
      //         setState(() {});
      //       }),
      //   SwipeAction(
      //       title: "action3", color: Colors.orange, onTap: (handler) {}),
      // ],
      child: Container(
          margin: EdgeInsets.only(left: 12, right: 12),
          padding: EdgeInsets.only(top: 8, bottom: 8),

          //margin: EdgeInsets.only(bottom: 4),
          color: Colors.white,
          child: Column(
            children: [
              Row(
                children: [
                  Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      Container(
                        width: 55,
                        height: 55,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://cdn.extra.ie/wp-content/uploads/2020/03/11123037/Chloe-Agnew-2.jpg'),
                                fit: BoxFit.cover),
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(60)),
                            border:
                                Border.all(color: Color(0xffFF635A), width: 2)),
                      ),
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: Color(0xff00F86B),
                            border: Border.all(color: Colors.white, width: 5),
                            borderRadius:
                                BorderRadius.all(Radius.circular(45))),
                      )
                    ],
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(right: 12, left: 12),
                      child: Text(
                        'Etham Walker',
                        overflow: TextOverflow.ellipsis,
                        style: titleStyle.copyWith(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w100),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    width: 55,
                    height: 50,
                    child: Transform.scale(
                      scale: 1.2,
                      child: Radio(
                        value: index,
                        activeColor: Color(0xff0BCC83),
                        groupValue: _radioValue1,
                        onChanged: _handleRadioValueChange1,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 18,
              ),
              Container(
                color: Colors.grey[200],
                margin: EdgeInsets.only(left: 12, right: 12),
                height: 2,
                width: MediaQuery.of(context).size.width,
              )
            ],
          )),
    );
  }
}
