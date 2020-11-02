import 'dart:io';

import 'package:audio_recorder/audio_recorder.dart';
import 'package:audioplayer/audioplayer.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import 'continuos_fade_in_out.dart';
import 'stopwatch_view.dart';

class AudioRecorderConsoleState extends State<AudioRecorderConsole> {
  Recording _recording;
  bool _isRecording = false;
  ContinuosFadeInFadeOut continuosFadeInFadeOut;
  String tempFilename = "TempRecording";
  File defaultAudioFile;

  @override
  Widget build(BuildContext context) {
    return audioRecorderConsole(context);
  }

  Widget audioRecorderConsole(BuildContext context) {
    return Container(
        height: 60.0,
        child: Center(
            child: _isRecording
                ? stopRecordingButton(context)
                : startRecordingButton(context)));
  }

  startRecording() async {
    try {
      Directory docDir = await getApplicationDocumentsDirectory();
      String filePath = p.join(docDir.path, this.tempFilename);
      File tempAudioFile = File(filePath + '.m4a');
      if (await tempAudioFile.exists()) {
        await tempAudioFile.delete();
      }
      if (await AudioRecorder.hasPermissions) {
        await AudioRecorder.start(
            path: filePath, audioOutputFormat: AudioOutputFormat.AAC);
      } else {
        Scaffold.of(context).showSnackBar(SnackBar(
            content: Text("Error! Audio recorder lacks permissions.")));
      }
      bool isRecording = await AudioRecorder.isRecording;
      setState(() {
        _recording =
            Recording(duration: Duration(milliseconds: 2000), path: filePath);
        _isRecording = isRecording;
        defaultAudioFile = tempAudioFile;
      });
    } catch (e) {
      print(e);
    }
  }

  Widget startRecordingButton(BuildContext context) {
    return FloatingActionButton(
        backgroundColor: Colors.green,
        mini: true,
        child: Icon(Icons.mic, size: 26.0),
        onPressed: () => startRecording());
  }

  stopRecording() async {
    // Await return of Recording object
    var recording = await AudioRecorder.stop();
    bool isRecording = await AudioRecorder.isRecording;

    Directory docDir = await getApplicationDocumentsDirectory();

    AudioPlayer audioPlayer = AudioPlayer();
    await audioPlayer.play(p.join(docDir.path, this.tempFilename + '.m4a'));

    widget.whenRecord(p.join(docDir.path, this.tempFilename + '.m4a'));
    setState(() {
      _isRecording = isRecording;
      defaultAudioFile = File(p.join(docDir.path, this.tempFilename + '.m4a'));
    });
  }

  Widget stopRecordingButton(BuildContext context) {
    continuosFadeInFadeOut = ContinuosFadeInFadeOut();
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        continuosFadeInFadeOut,
        TimeComponent(),
        FloatingActionButton(
            backgroundColor: Colors.red,
            mini: true,
            child: Icon(Icons.stop, size: 26.0),
            onPressed: () => stopRecording())
      ],
    );
  }
}

class AudioRecorderConsole extends StatefulWidget {
  final Function(String) whenRecord;

  const AudioRecorderConsole({Key key, this.whenRecord}) : super(key: key);

  @override
  AudioRecorderConsoleState createState() => AudioRecorderConsoleState();
}
