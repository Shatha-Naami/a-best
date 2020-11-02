import 'package:best/core/constent.dart';
import 'package:flutter/material.dart';

class AltersScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<AltersScreen> {
  var _listControllerSlider = ScrollController();

  bool show = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.red,
        body: Container(
          color: Color(0xffF7F7FA),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 90,
                color: Colors.white,
                margin: EdgeInsets.only(left: 20, right: 20, bottom: 6),
                padding: EdgeInsets.only(bottom: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 32),
                      child: Text(
                        'Alerts',
                        style: titleStyle.copyWith(
                            color: Colors.black,
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    InkWell(
                      child: Container(
                        margin: EdgeInsets.only(top: 12),
                        child: Text(
                          'clear all',
                          style: titleStyle.copyWith(
                              color: Color(0xffB8C0D2),
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          show = !show;
                        });
                      },
                    )
                  ],
                ),
              ),
             Visibility(child:  Expanded(
               child: ListView.builder(
                   scrollDirection: Axis.vertical,
                   shrinkWrap: true,
                   controller: _listControllerSlider,
                   itemCount: 5,
                   itemBuilder: (BuildContext context, index) {
                     return (index <= 1)
                         ? Container(
                         color: Colors.white,
                         padding: EdgeInsets.only(
                             left: 12, top: 8, bottom: 8),
                         child: Column(
                           children: [
                             Row(
                               children: [
                                 Stack(
                                   alignment: Alignment.center,
                                   children: [
                                     Container(
                                       width: 65,
                                       height: 65,
                                       decoration: BoxDecoration(
                                         color: Color(0xffF2F2F7),
                                         borderRadius: BorderRadius.all(
                                             Radius.circular(60)),
                                       ),
                                     ),
                                     Icon(
                                       Icons.card_giftcard_rounded,
                                       size: 36,
                                       color: Color(0xff0BCC83),
                                     )
                                   ],
                                 ),
                                 Expanded(
                                     child: Container(
                                         width: 45,
                                         child: ListTile(
                                           title: Text(
                                             'Refer a friend, Get \$10',
                                             style: titleStyle.copyWith(
                                                 color: Colors.black,
                                                 fontSize: 19,
                                                 fontWeight:
                                                 FontWeight.w700),
                                           ),
                                           subtitle: Text(
                                             'Hey when are you going? 😎',
                                             overflow:
                                             TextOverflow.ellipsis,
                                             style: titleStyle.copyWith(
                                                 color: Colors.black,
                                                 fontSize: 16,
                                                 fontWeight:
                                                 FontWeight.w100),
                                           ),
                                         ))),
                                 Container(
                                   alignment: Alignment.topCenter,
                                   width: 100,
                                   child: ListTile(
                                     title: Text(
                                       '9:45 PM',
                                       style: titleStyle.copyWith(
                                           color: Color(0xff9F9F9F),
                                           fontWeight: FontWeight.w500,
                                           fontSize: 14),
                                     ),
                                     subtitle: Stack(
                                       alignment: Alignment.center,
                                       children: [
                                         Container(
                                           width: 16,
                                           height: 16,
                                           margin: EdgeInsets.only(
                                               top: 12, bottom: 0),
                                           decoration: BoxDecoration(
                                               color: Color(0xffFF635A),
                                               borderRadius:
                                               BorderRadius.all(
                                                   Radius.circular(
                                                       22))),
                                         ),
                                       ],
                                     ),
                                   ),
                                 ),
                               ],
                             ),
                             SizedBox(
                               height: 8,
                             ),
                             Container(
                               color: Colors.grey[200],
                               margin:
                               EdgeInsets.only(left: 12, right: 12),
                               height: 2,
                               width: MediaQuery.of(context).size.width,
                             )
                           ],
                         ))
                         : Container(
                         color: Colors.white,
                         padding: EdgeInsets.only(
                             left: 12, top: 8, bottom: 8),
                         child: Column(
                           children: [
                             Row(
                               children: [
                                 Stack(
                                   alignment: Alignment.center,
                                   children: [
                                     Container(
                                       width: 65,
                                       height: 65,
                                       decoration: BoxDecoration(
                                         color: Color(0xffF2F2F7),
                                         borderRadius: BorderRadius.all(
                                             Radius.circular(60)),
                                       ),
                                     ),
                                     Icon(
                                       Icons.message_outlined,
                                       size: 36,
                                       color: Color(0xff0BCC83),
                                     )
                                   ],
                                 ),
                                 Expanded(
                                     child: Container(
                                         width: 45,
                                         child: ListTile(
                                           title: Text(
                                             'Albaik Restaurant',
                                             style: titleStyle.copyWith(
                                                 color: Colors.black,
                                                 fontSize: 19,
                                                 fontWeight:
                                                 FontWeight.w700),
                                           ),
                                           subtitle: Text(
                                             '20% off all menu items for one week only Quickly seize the show',
                                             overflow:
                                             TextOverflow.ellipsis,
                                             style: titleStyle.copyWith(
                                                 color: Colors.black,
                                                 fontSize: 16,
                                                 fontWeight:
                                                 FontWeight.w100),
                                           ),
                                         ))),
                                 Container(
                                   alignment: Alignment.topCenter,
                                   width: 100,
                                   child: ListTile(
                                     title: Text(
                                       '9:45 PM',
                                       style: titleStyle.copyWith(
                                           color: Color(0xff9F9F9F),
                                           fontWeight: FontWeight.w500,
                                           fontSize: 14),
                                     ),
                                     subtitle: Stack(
                                       alignment: Alignment.center,
                                       children: [
                                         Container(
                                           width: 16,
                                           height: 16,
                                           margin: EdgeInsets.only(
                                               top: 12, bottom: 0),
                                           decoration: BoxDecoration(
                                               color: Colors.transparent,
                                               borderRadius:
                                               BorderRadius.all(
                                                   Radius.circular(
                                                       22))),
                                         ),
                                       ],
                                     ),
                                   ),
                                 ),
                               ],
                             ),
                             SizedBox(
                               height: 8,
                             ),
                             Container(
                               color: Colors.grey[200],
                               margin:
                               EdgeInsets.only(left: 12, right: 12),
                               height: 2,
                               width: MediaQuery.of(context).size.width,
                             )
                           ],
                         ));
                   }),
             ), replacement:  Column(
               children: [
                 SizedBox(
                   height: MediaQuery.of(context).size.height / 6,
                 ),
                 Center(
                   child: Stack(
                     alignment: Alignment.center,
                     children: [
                       Container(
                         width: 160,
                         height: 160,
                         margin: EdgeInsets.only(left: 18),
                         decoration: BoxDecoration(
                             color: Color(0xffF0F0F6),
                             borderRadius: BorderRadius.all(Radius.circular(100))),
                       ),
                       Image.asset(
                         'assets/image/notification.png',
                         height: 100,
                         width: 100,
                       )
                     ],
                   ),
                 ),
                 SizedBox(
                   height: 12,
                 ),
                 Text(
                   'Notifications',
                   style: titleStyle.copyWith(
                       color: Colors.black, fontWeight: FontWeight.w500),
                 ),
                 SizedBox(
                   height: 8,
                 ),
                 Text(
                   'We’ll let you know when we get news for you.',
                   style: titleStyle.copyWith(
                       color: Colors.black, fontWeight: FontWeight.w500, fontSize: 16),
                 ),
               ],
             ), visible: show,)
            ],
          ),
        ),
      ),
    );
  }

}
