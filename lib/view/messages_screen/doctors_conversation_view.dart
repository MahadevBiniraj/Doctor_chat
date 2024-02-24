import 'package:doctor_channeling_app/view/messages_screen/widgets/chat_bottom_section.dart';
import 'package:doctor_channeling_app/view/messages_screen/widgets/doctors_chat.dart';
import 'package:flutter/material.dart';

class DoctorsConversationView extends StatelessWidget {
  const DoctorsConversationView({super.key, required this.doctorsName});
  final String doctorsName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new)),
        title: Text(doctorsName),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        forceMaterialTransparency: true,
        titleTextStyle: const TextStyle(
            fontSize: 26,
            color: Color(0xff198EB6),
            fontWeight: FontWeight.bold),
        actions: [
          CircleAvatar(
              radius: 15,
              backgroundColor: const Color(0xffD9D9D9).withOpacity(0.3),
              foregroundColor: Colors.black,
              child: const Icon(
                Icons.call,
                size: 18,
              )),
          const SizedBox(
            width: 18,
          ),
          CircleAvatar(
              radius: 15,
              backgroundColor: const Color(0xffD9D9D9).withOpacity(0.3),
              foregroundColor: Colors.black,
              child: const Icon(
                Icons.videocam,
                size: 18,
              )),
          const SizedBox(
            width: 25,
          ),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 19),
        child: Stack(
          children: [
            DoctorsChat(),
            ChatBottomSection(),
          ],
        ),
      ),
    );
  }
}
