import 'package:doctor_channeling_app/view/dummy_db.dart';
import 'package:doctor_channeling_app/view/messages_screen/doctors_conversation_view.dart';
import 'package:flutter/material.dart';

class DoctorsMessageList extends StatelessWidget {
  const DoctorsMessageList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: DummyDb.doctorsList.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DoctorsConversationView(
                      doctorsName: DummyDb.doctorsList[index]["doctor"]),
                ));
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            decoration: BoxDecoration(
                color: const Color(0xffD9D9D9).withOpacity(0.3),
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 35,
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?q=80&w=1770&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                ),
                const SizedBox(
                  width: 24,
                ),
                SizedBox(
                  width: 173,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        DummyDb.doctorsList[index]["doctor"],
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        height: 11,
                      ),
                      const SizedBox(
                        child: Text(
                          "Worem consectetur adipiscing it.",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 12),
                        ),
                      )
                    ],
                  ),
                ),
                const Spacer(),
                const Column(
                  children: [
                    Text(
                      "12:50",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    CircleAvatar(
                      backgroundColor: Color(0xff198EB6),
                      foregroundColor: Colors.white,
                      radius: 10,
                      child: Text("5"),
                    )
                  ],
                )
              ],
            ),
          ),
        );
      },
      separatorBuilder: (context, index) => const SizedBox(
        height: 15,
      ),
    );
  }
}
