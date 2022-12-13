import 'package:flutter/material.dart';
import 'package:superclock/screens/alarm_view.dart';
import 'package:superclock/screens/stopwatch_view.dart';
import 'package:superclock/screens/timer_view.dart';
import 'package:superclock/screens/world_clock_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedPage = 0;
  List<Widget> pages = [Alarm(), WorldClock(), Timer(), StopWatch()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedPage],
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.add_alarm),
            label: 'Alarm',
          ),
          NavigationDestination(
            icon: Icon(Icons.access_time),
            label: 'World Clock',
          ),
          NavigationDestination(
            icon: Icon(Icons.alarm),
            label: 'Timer',
          ),
          NavigationDestination(
            icon: Icon(Icons.timer),
            label: 'Stopwatch',
          ),
        ],
        onDestinationSelected: (int index) {
          setState(() {
            selectedPage = index;
          });
        },
        selectedIndex: selectedPage,
      ),
    );
  }
}
