import 'package:flutproject/utils/colors.dart';
import 'package:flutproject/widgets/home_meeting_buttons.dart';
import 'package:flutter/material.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  int _page = 0;
  onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("Meet & Chat"),
        centerTitle: true,
      ),
      body: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            HomeMeetingButton(
                onPressed: () {}, icon: Icons.videocam, text: 'New Meeting'),
            HomeMeetingButton(
                onPressed: () {},
                icon: Icons.add_box_rounded,
                text: 'Join Meeting'),
            HomeMeetingButton(
                onPressed: () {}, icon: Icons.calendar_today, text: 'Schedule'),
            HomeMeetingButton(
                onPressed: () {},
                icon: Icons.arrow_upward,
                text: 'Share Screen'),
          ],
        )
      ]),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: footerColor,
        currentIndex: _page,
        unselectedFontSize: 14,
        onTap: onPageChanged,
        selectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
              label: "Meet & Char", icon: Icon(Icons.comment_bank)),
          BottomNavigationBarItem(
              label: "Meetings", icon: Icon(Icons.lock_clock)),
          BottomNavigationBarItem(
              label: "Contacts", icon: Icon(Icons.person_outline)),
          BottomNavigationBarItem(
              label: "Settings", icon: Icon(Icons.settings_outlined)),
        ],
      ),
    );
  }
}
