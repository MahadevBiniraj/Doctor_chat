import 'package:doctor_channeling_app/view/messages_screen/widgets/active_doctors_list.dart';
import 'package:doctor_channeling_app/view/messages_screen/widgets/doctors_messages_list.dart';
import 'package:doctor_channeling_app/view/widgets/search_bar.dart';
import 'package:flutter/material.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 19,
              // height: 45,
            ),
            SearchBars(),
            SizedBox(
              height: 24,
            ),
            Text(
              "Active Now",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            SizedBox(
              height: 24,
            ),
            ActiveDoctorsList(),
            SizedBox(
              height: 24,
            ),
            Text(
              "Messages",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            SizedBox(
              height: 24,
            ),
            DoctorsMessageList(),
          ],
        ),
      ),
    );
  }
}
