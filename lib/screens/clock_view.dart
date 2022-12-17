import 'package:analog_clock/analog_clock.dart';
import 'package:flutter/material.dart';
import 'package:superclock/theme/theme_constants.dart';

class Clock extends StatefulWidget {
  const Clock({super.key});

  @override
  State<Clock> createState() => _ClockState();
}

class _ClockState extends State<Clock> {
  AnalogClock myClock = const AnalogClock(
    minuteHandColor: secondaryColor,
    hourHandColor: secondaryColor,
    secondHandColor: accentColor,
    showNumbers: true,
    showAllNumbers: true,
    numberColor: secondaryColor,
    isLive: true,
    textScaleFactor: 1.05,
  );
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(0),
          alignment: Alignment.topCenter,
          padding: const EdgeInsets.symmetric(horizontal: 17),
          height: MediaQuery.of(context).size.height * 0.4,
          child: Expanded(
            child: myClock,
          ),
        ),
      ],
    );
  }
}
