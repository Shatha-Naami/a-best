import 'package:best/Ui/edit_chats_screen/edit_chats.dart';
import 'package:best/core/constent.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

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
        backgroundColor: Color(0xffF7F7FA),
        body: Container(
          color: Color(0xffF7F7FA),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 70,
                margin: EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 32),
                      child: Text(
                        'Chats',
                        style: titleStyle.copyWith(
                            color: Colors.black,
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                   InkWell(
                     child:  Container(
                       child: Image.asset(
                         'assets/image/edit.png',
                         width: 36,
                         height: 36,
                         color: Colors.black,
                       ),
                     ),
                     onTap: (){
                       pushNewScreen(
                         context,
                         screen: EditChatsScreen(),
                         withNavBar: false, // OPTIONAL VALUE. True by default.
                         pageTransitionAnimation: PageTransitionAnimation.cupertino,
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
              SizedBox(height: 32,),
              Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    controller: _listControllerSlider,
                    itemCount: 2,
                    itemBuilder:(BuildContext context, index){
                      return (index ==0 )?
                      Container(
                        color: Colors.white,
                        padding: EdgeInsets.only(left: 12,top: 16,bottom: 16),
                        child:Column(
                          children: [
                            Row(
                              children: [
                                Stack(
                                  alignment: Alignment.bottomLeft,
                                  children: [
                                    Container(
                                      width: 65,
                                      height: 65,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  'https://cdn.extra.ie/wp-content/uploads/2020/03/11123037/Chloe-Agnew-2.jpg'),
                                              fit: BoxFit.cover),
                                          color: Colors.white,
                                          borderRadius:
                                          BorderRadius.all(Radius.circular(60)),
                                          border: Border.all(
                                              color: Color(0xffFF635A), width: 1.5)),
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
                                        width: 45,
                                        child: ListTile(
                                          title: Text(
                                            'Etham Walker',
                                            style: titleStyle.copyWith(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          subtitle: Text(
                                            'Hey when are you going? 😎',
                                            overflow: TextOverflow.ellipsis,
                                            style: titleStyle.copyWith(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w100),
                                          ),
                                        ))),
                                Container(
                                  alignment: Alignment.topCenter,
                                  width: 100,
                                  child: ListTile(
                                    title: Text(
                                      '9:45 PM',
                                      style: titleStyle.copyWith(
                                          color: Color(0xff9F9F9F), fontWeight: FontWeight.w500,fontSize: 14),
                                    ),
                                    subtitle: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Container(
                                          width: 40,
                                          height: 24,
                                          margin: EdgeInsets.only(top: 12,bottom: 0),
                                          decoration: BoxDecoration(
                                              color: Color(0xff0BCC83),
                                              borderRadius:
                                              BorderRadius.all(Radius.circular(22))),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 12,bottom: 0),
                                          //  padding: EdgeInsets.only(bottom: 12),

                                          child: Text(
                                            '14',
                                            style: titleStyle.copyWith(color: Colors.white,fontSize: 16),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 8,),
                            Container(
                              color: Colors.grey[200],

                              margin: EdgeInsets.only(left: 12,right: 12),
                              height: 2,
                              width: MediaQuery.of(context).size.width,
                            )
                          ],
                        )
                      ):

                      Container(
                        color: Colors.white,
                        padding: EdgeInsets.only(left: 12,top: 0,bottom: 16),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Stack(
                                  alignment: Alignment.bottomLeft,
                                  children: [
                                    Container(
                                      width: 65,
                                      height: 65,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  'https://cdn.extra.ie/wp-content/uploads/2020/03/11123037/Chloe-Agnew-2.jpg'),
                                              fit: BoxFit.cover),
                                          color: Colors.white,
                                          borderRadius:
                                          BorderRadius.all(Radius.circular(60)),
                                          border: Border.all(
                                              color: Color(0xff3ACCE1), width: 2)),
                                    ),
                                    Container(
                                      width: 20,
                                      height: 20,
                                      decoration: BoxDecoration(
                                          color: Color(0xffD5D4D4),
                                          border: Border.all(color: Colors.white, width: 5),
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
                                            'Duran Clayton',
                                            style: titleStyle.copyWith(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          subtitle: Text(
                                            'Sure, lets do it.',
                                            overflow: TextOverflow.ellipsis,
                                            style: titleStyle.copyWith(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w100),
                                          ),
                                        ))),
                                Container(
                                  alignment: Alignment.topCenter,
                                  width: 100,
                                  child: ListTile(
                                    title: Text(
                                      '9:45 PM',
                                      style: titleStyle.copyWith(
                                          color: Color(0xff9F9F9F), fontWeight: FontWeight.w500,fontSize: 14),
                                    ),
                                    // subtitle: Stack(
                                    //   alignment: Alignment.center,
                                    //   children: [
                                    //     Container(
                                    //       width: 45,
                                    //       height: 28,
                                    //       margin: EdgeInsets.only(top: 12,bottom: 12),
                                    //       decoration: BoxDecoration(
                                    //           color: Color(0xff0BCC83),
                                    //           borderRadius:
                                    //           BorderRadius.all(Radius.circular(22))),
                                    //     ),
                                    //     Container(
                                    //       margin: EdgeInsets.only(top: 12,bottom: 12),
                                    //       //  padding: EdgeInsets.only(bottom: 12),
                                    //
                                    //       child: Text(
                                    //         '14',
                                    //         style: titleStyle.copyWith(color: Colors.white,fontSize: 18),
                                    //       ),
                                    //     )
                                    //   ],
                                    // ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 8,),
                            Container(
                              color: Colors.grey[200],
                              margin: EdgeInsets.only(left: 12,right: 12),
                              height: 2,
                              width: MediaQuery.of(context).size.width,
                            )
                          ],
                        ),
                      );
                    }),
              )

            ],
          ),
        ),
      ),
    );
  }
}
