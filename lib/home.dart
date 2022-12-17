import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:superclock/screens/alarm_view.dart';
import 'package:superclock/screens/clock_view.dart';
import 'package:superclock/screens/stopwatch_view.dart';
import 'package:superclock/screens/timer_view.dart';
import 'package:superclock/theme/theme_constants.dart';

var indexProvider = StateProvider<int>((ref) => 0);

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    TextTheme textTheme = Theme.of(context).textTheme;

    List<String> appbarItems = const ['Alarm', 'Clock', 'Timer', 'Stopwatch'];

    AppBar appBar = AppBar(
      backgroundColor: primaryColor,
      title: Text(appbarItems[ref.watch(indexProvider)]),
      titleTextStyle: textTheme.headline5?.copyWith(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        letterSpacing: 1,
      ),
      titleSpacing: MediaQuery.of(context).size.width * 0.0725,
      actions: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.023,
          ),
          child: IconButton(
            iconSize: 27,
            icon: const Icon(Icons.settings_suggest_outlined),
            tooltip: 'More',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a snackbar')));
            },
          ),
        ),
      ],
    );

    List<Widget> bodyItems = const [
      Alarm(),
      Clock(),
      Timer(),
      StopWatch(),
    ];

    List<BottomNavigationBarItem> navItems = const [
      BottomNavigationBarItem(
        icon: Icon(Icons.alarm),
        label: 'Alarm',
        backgroundColor: primaryColor,
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.watch_later_outlined),
        label: 'Clock',
        backgroundColor: primaryColor,
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.hourglass_empty_outlined),
        label: 'Timer',
        backgroundColor: primaryColor,
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.timer_outlined),
        label: 'Stopwatch',
        backgroundColor: primaryColor,
      ),
    ];

    return Scaffold(
      appBar: appBar,
      body: bodyItems[ref.watch(indexProvider)],

      // Container(
      //   margin: const EdgeInsets.all(8.0),
      //   height: MediaQuery.of(context).size.height -
      //       appBar.preferredSize.height -
      //       MediaQuery.of(context).padding.top -
      //       MediaQuery.of(context).padding.bottom,
      //   child: bodyItems[ref.watch(indexProvider)],
      // ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: primaryColor,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        enableFeedback: true,
        items: navItems,
        currentIndex: ref.watch(indexProvider),
        onTap: (index) {
          ref.read(indexProvider.notifier).state = index;
        },
      ),
    );
  }
}
