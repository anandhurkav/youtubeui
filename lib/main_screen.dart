import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:youtubeui/add.dart';
import 'package:youtubeui/screens/home.dart';
import 'package:youtubeui/screens/library.dart';
import 'package:youtubeui/screens/shorts.dart';
import 'package:youtubeui/screens/subscriptions.dart';

class ScreenMain extends StatefulWidget {
  const ScreenMain({super.key});

  @override
  State<ScreenMain> createState() => _ScreenMainState();
}

class _ScreenMainState extends State<ScreenMain> {
  int currentindex = 0;
  List pages = [
    const Home(),
    Shorts(),
    const Add(),
    Subscriptions(),
    Library()
  ];

  onchanged(value) {
    setState(() {
      currentindex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: pages[currentindex],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          currentIndex: currentindex,
          onTap: onchanged,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_collection_outlined), label: 'Shorts'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.add_circle_outline,
                  size: 30,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.subscriptions_outlined),
                label: 'Subscriptions'),
            BottomNavigationBarItem(
                icon: Icon(Icons.my_library_add), label: 'Library'),
          ]),
    );
  }
}

