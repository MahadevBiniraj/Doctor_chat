import 'package:doctor_channeling_app/view/dummy_db.dart';
import 'package:flutter/material.dart';

class DoctorsChat extends StatelessWidget {
  const DoctorsChat({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: DummyDb.conversation.length,
      itemBuilder: (context, index) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Align(
            alignment: DummyDb.conversation[index]["doctor"]
                ? Alignment.topRight
                : Alignment.topLeft,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
              decoration: BoxDecoration(
                  color: DummyDb.conversation[index]["doctor"]
                      ? const Color(0xff198EB6)
                      : const Color(0xffD9D9D9).withOpacity(0.3),
                  borderRadius: BorderRadius.circular(10)),
              child: Text(DummyDb.conversation[index]["message"]),
            ),
          ),
        );
      },
    );
  }
}
