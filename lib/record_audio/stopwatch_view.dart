import 'dart:async';

import 'package:flutter/material.dart';

class ElapsedTime {
  final int hundreds;
  final int seconds;
  final int minutes;

  ElapsedTime({
    this.hundreds,
    this.seconds,
    this.minutes,
  });
}

class Dependencies {
  final List<ValueChanged<ElapsedTime>> timerListeners =
      <ValueChanged<ElapsedTime>>[];
  final TextStyle textStyle = const TextStyle(fontSize: 15.0);
  final Stopwatch stopwatch = Stopwatch();
  final int timerMillisecondsRefreshRate = 30;
}

class TimeComponent extends StatefulWidget {
  TimeComponent({Key key}) : super(key: key);

  TimeComponentState createState() => TimeComponentState();
}

class TimeComponentState extends State<TimeComponent> {
  final Dependencies dependencies = Dependencies();

  @override
  Widget build(BuildContext context) {
    setState(() {
      dependencies.stopwatch.stop();
      dependencies.stopwatch.start();
    });
    return TimerText(dependencies: dependencies);
  }
}

class TimerText extends StatefulWidget {
  TimerText({this.dependencies});

  final Dependencies dependencies;

  TimerTextState createState() => TimerTextState(dependencies: dependencies);
}

class TimerTextState extends State<TimerText> {
  TimerTextState({this.dependencies});

  final Dependencies dependencies;
  Timer timer;
  int milliseconds;

  @override
  void initState() {
    timer = Timer.periodic(
        Duration(milliseconds: dependencies.timerMillisecondsRefreshRate),
        callback);
    super.initState();
  }

  @override
  void dispose() {
    timer?.cancel();
    timer = null;
    super.dispose();
  }

  void callback(Timer timer) {
    if (milliseconds != dependencies.stopwatch.elapsedMilliseconds) {
      milliseconds = dependencies.stopwatch.elapsedMilliseconds;
      final int hundreds = (milliseconds / 10).truncate();
      final int seconds = (hundreds / 100).truncate();
      final int minutes = (seconds / 60).truncate();
      final ElapsedTime elapsedTime = ElapsedTime(
        hundreds: hundreds,
        seconds: seconds,
        minutes: minutes,
      );
      for (final listener in dependencies.timerListeners) {
        listener(elapsedTime);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RepaintBoundary(
          child: SizedBox(
            height: 15.0,
            child: MinutesAndSeconds(dependencies: dependencies),
          ),
        ),
        RepaintBoundary(
          child: SizedBox(
            height: 15.0,
            child: Hundreds(dependencies: dependencies),
          ),
        ),
      ],
    );
  }
}

class MinutesAndSeconds extends StatefulWidget {
  MinutesAndSeconds({this.dependencies});

  final Dependencies dependencies;

  MinutesAndSecondsState createState() =>
      MinutesAndSecondsState(dependencies: dependencies);
}

class MinutesAndSecondsState extends State<MinutesAndSeconds> {
  MinutesAndSecondsState({this.dependencies});

  final Dependencies dependencies;

  int minutes = 0;
  int seconds = 0;

  @override
  void initState() {
    dependencies.timerListeners.add(onTick);
    super.initState();
  }

  void onTick(ElapsedTime elapsed) {
    if (elapsed.minutes != minutes || elapsed.seconds != seconds) {
      setState(() {
        minutes = elapsed.minutes;
        seconds = elapsed.seconds;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    String minutesStr = (minutes % 60).toString().padLeft(2, '0');
    String secondsStr = (seconds % 60).toString().padLeft(2, '0');
    return Text('$minutesStr:$secondsStr.', style: dependencies.textStyle);
  }
}

class Hundreds extends StatefulWidget {
  Hundreds({this.dependencies});

  final Dependencies dependencies;

  HundredsState createState() => HundredsState(dependencies: dependencies);
}

class HundredsState extends State<Hundreds> {
  HundredsState({this.dependencies});

  final Dependencies dependencies;

  int hundreds = 0;

  @override
  void initState() {
    dependencies.timerListeners.add(onTick);
    super.initState();
  }

  void onTick(ElapsedTime elapsed) {
    if (elapsed.hundreds != hundreds) {
      setState(() {
        hundreds = elapsed.hundreds;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    String hundredsStr = (hundreds % 100).toString().padLeft(2, '0');
    return Text(hundredsStr, style: dependencies.textStyle);
  }
}
