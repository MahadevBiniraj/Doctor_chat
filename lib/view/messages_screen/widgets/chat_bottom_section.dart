import 'package:flutter/material.dart';

class ChatBottomSection extends StatelessWidget {
  const ChatBottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Row(
          children: [
            Expanded(
              flex: 5,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                decoration: BoxDecoration(
                    color: const Color(0xffD9D9D9).withOpacity(0.3),
                    borderRadius: BorderRadius.circular(10)),
                child: const Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Icon(Icons.mood),
                    SizedBox(
                      width: 24,
                    ),
                    Text(
                      "Write here",
                      style: TextStyle(fontSize: 16),
                    ),
                    Spacer(),
                    Icon(Icons.photo_camera)
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            const Expanded(
              flex: 1,
              child: CircleAvatar(
                radius: 30,
                backgroundColor: Color(0xff198EB6),
                foregroundColor: Colors.white,
                child: Icon(Icons.send),
              ),
            )
          ],
        ),
      ),
    );
  }
}
