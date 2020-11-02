import 'dart:io';

import 'package:best/Ui/add_text_story/bloc/add_text_bloc.dart';
import 'package:best/Ui/add_text_story/bloc/add_text_event.dart';
import 'package:best/Ui/add_text_story/bloc/add_text_state.dart';
import 'package:best/Ui/choose_type_story/choose_type_story.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:screenshot/screenshot.dart';
import 'package:text_editor/text_editor.dart';

import '../../injectoin.dart';

class AddPollStory extends StatefulWidget {


  @override
  TestState createState() => TestState();
}

class TestState extends State<AddPollStory> {
  final fonts = [
    'OpenSans',
    'Billabong',
    'GrandHotel',
    'Oswald',
    'Quicksand',
  ];
  TextStyle _textStyle = TextStyle(
    fontSize: 22,
    color: Colors.white,
    fontFamily: 'Billabong',
  );
  String _text = 'Ask a question…';
  TextAlign _textAlign = TextAlign.center;

  void _tapHandler(text, textStyle, textAlign) {
    showGeneralDialog(
      context: context,
      barrierDismissible: false,
      transitionDuration: Duration(
        milliseconds: 400,
      ), // how long it takes to popup dialog after button click
      pageBuilder: (_, __, ___) {
        // your widget implementation
        return Container(
          color: Colors.black.withOpacity(0.6),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SafeArea(
              // top: false,
              child: Container(
                child: TextEditor(
                  fonts: fonts,
                  text: text,
                  textStyle: textStyle,
                  textAlingment: textAlign,
                  onEditCompleted: (style, align, text) {
                    setState(() {
                      _text = text;
                      _textStyle = style;
                      _textAlign = align;
                      screen = false;
                    });
                    Navigator.pop(context);
//                    screenshotController
//                        .capture(delay: Duration(milliseconds: 20))
//                        .then((File image) {
//                      Navigator.push(
//                        context,
//                        MaterialPageRoute(
//                            builder: (context) =>
//                                ChooseTypeStory(path: image.path)),
//                      );
//                    });
                  },
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  final _bloc = sl<AddTextBloc>();

  @override
  void initState() {
    super.initState();
  }

  List<Color> listBackground = [
    Colors.pink[200],
    Colors.amberAccent,
    Colors.purple,
    Colors.green,
    Colors.black,
    Color.fromARGB(0xff20C8BC, 0xff80E3DC, 0xff393E3E, 0xff7E908F)
  ];

  int currentIndex = 0;
  ScreenshotController screenshotController = ScreenshotController();
  bool screen = true;
  double _width = 50;
  double _height = 60;
  Color _color = Colors.white;
  Color _colorMain = Colors.white;
  Color _colorYes = Colors.black;
  Color _colorNo = Colors.black;
  final _leftBorderRadius = BorderRadius.only(
      topLeft: Radius.circular(24), bottomLeft: Radius.circular(24));
  final _rightBorderRadius = BorderRadius.only(
      topRight: Radius.circular(24), bottomRight: Radius.circular(24));
  final animateDuration = Duration(seconds: 1);

  bool show = false;


  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: _bloc,
      builder: (BuildContext context, AddTextState state) {
        error(state.error);

        return Screenshot(
          controller: screenshotController,
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SafeArea(
              top: false,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    color: listBackground[state.currentIndex],
                    height: double.infinity,
                    width: double.infinity,
                  ),
                  Column(

                    children: <Widget>[
                      SizedBox(height: MediaQuery.of(context).size.height/2.5,),

                      Center(
                        child: GestureDetector(
                          onTap: () => _tapHandler(_text, _textStyle, _textAlign),
                          child: Text(
                            _text,
                            style: _textStyle,
                            textAlign: _textAlign,
                          ),
                        ),
                      ),
                      SizedBox(height: 18,),
                      Center(
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AnimatedContainer(
                              width: _width + 50,
                              height: _height,
                              decoration: BoxDecoration(
                                color: _colorMain,
                                borderRadius: _leftBorderRadius,
                              ),
                              duration: animateDuration,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    child: Text(
                                      'Yes',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 18, color: _colorYes),
                                    ),
                                    onTap: () => onPressTap(),
                                  ),
                                  Visibility(
                                      visible: show,
                                      child: Text(
                                        '75%',
                                        style: TextStyle(
                                          fontSize: 22,
                                          color: Color(0xff0BCC83),
                                        ),
                                      )),
                                ],
                              ),
                              curve: Curves.fastOutSlowIn,
                            ),
                            AnimatedContainer(
                              width: _width + 10,
                              height: _height,
                              decoration: BoxDecoration(
                                color: _color,
                                borderRadius: _rightBorderRadius,
                              ),
                              // Define how long the animation should take.
                              duration: animateDuration,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,

                                children: [

                                  InkWell(
                                    child: Text(
                                      'No',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 18, color: _colorNo),
                                    ),
                                    onTap: () => onPressTap(),
                                  ),
                                  Visibility(
                                    visible: show,
                                    child: Text(
                                      '25'
                                          '%',
                                      style: TextStyle(fontSize: 22, color: _colorNo),
                                    ),
                                  )
                                ],
                              ),
                              // Provide an optional curve to make the animation feel smoother.
                              curve: Curves.fastOutSlowIn,
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height/4,),

                      Visibility(
                        visible: screen,
                        child: Container(
                          alignment: Alignment.bottomLeft,

                          margin: EdgeInsets.all(24),
                          child: InkWell(
                            child: Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                  color: listBackground[state.currentIndex],
                                  border: Border.all(color: Colors.white, width: 3),
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(45))),
                            ),
                            onTap: () {
                              if (currentIndex >= 0 &&
                                  currentIndex <= listBackground.length - 2) {
                                currentIndex++;
                                _bloc.add(ChangeBackgroundEvent(
                                        (b) => b..background = currentIndex));
                              } else {
                                currentIndex = 0;
                                _bloc.add(ChangeBackgroundEvent(
                                        (b) => b..background = currentIndex));
                              }
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  state.isLoading
                      ? Center(child: CircularProgressIndicator())
                      : Container()
                ],
              ),
            ),
          ),
        );
      },
    );
  }
  onPressTap() {
    setState(() {
      show = true;
      _width = 81.0;
      _color = Color(0xffFFDAD8);
      _colorYes = Color(0xff0BCC83);
      _colorNo = Color(0xffFF635A);
    });
  }
  void error(String errorCode) {
    if (errorCode.isNotEmpty) {
      Fluttertoast.showToast(
          msg: errorCode,
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIos: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
      _bloc.add(ClearError());
    }
  }
}
