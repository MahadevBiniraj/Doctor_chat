import 'package:doctor_channeling_app/view/messages_screen/messages_screen.dart';
import 'package:doctor_channeling_app/view/notification_screen/notification_Screen.dart';
import 'package:flutter/material.dart';

class DefaultScreen extends StatefulWidget {
  const DefaultScreen({super.key});

  @override
  State<DefaultScreen> createState() => _DefaultScreenState();
}

class _DefaultScreenState extends State<DefaultScreen> {
  int navigationIndex = 0;
  List bottomNavigationList = [
    {"screen": const MessagesScreen(), "screenName": "Messages"},
    {"screen": const NotificationScreen(), "screenName": "Notifications"},
    {"screen": const MessagesScreen(), "screenName": "Messages"},
    {"screen": const MessagesScreen(), "screenName": "Messages"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios_new),
        title: Text("Notification"),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        forceMaterialTransparency: true,
        titleTextStyle: const TextStyle(
            fontSize: 26,
            color: Color(0xff198EB6),
            fontWeight: FontWeight.bold),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.black,
          iconSize: 24,
          currentIndex: navigationIndex,
          onTap: (value) {
            navigationIndex = value;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
              icon: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: navigationIndex == 0
                      ? const Color(0xff198EB6)
                      : Colors.transparent,
                ),
                child: const Icon(
                  Icons.home,
                ),
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
                icon: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: navigationIndex == 1
                        ? const Color(0xff198EB6)
                        : Colors.transparent,
                  ),
                  child: const Icon(
                    Icons.schedule,
                  ),
                ),
                label: "Notification"),
            BottomNavigationBarItem(
                icon: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 13, vertical: 13),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: navigationIndex == 2
                        ? const Color(0xff198EB6)
                        : Colors.transparent,
                  ),
                  child: const Icon(
                    Icons.chat,
                  ),
                ),
                label: "Messages"),
            BottomNavigationBarItem(
                icon: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: navigationIndex == 3
                        ? const Color(0xff198EB6)
                        : Colors.transparent,
                  ),
                  child: const Icon(
                    Icons.account_circle,
                  ),
                ),
                label: "Profile")
          ]),
      // body: const MessagesScreen(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: bottomNavigationList[navigationIndex],
      ),
    );
  }
}
