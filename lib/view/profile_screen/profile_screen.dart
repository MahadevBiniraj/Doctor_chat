import 'package:doctor_channeling_app/view/dummy_db.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          const CircleAvatar(
            radius: 65,
            backgroundImage: AssetImage("assets/images/userProfilePic.jpg"),
          ),
          const SizedBox(height: 29),
          const Text(
            "Chathura Sampath",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w900),
          ),
          const SizedBox(
            height: 30,
          ),
          Expanded(
            flex: 1,
            child: ListView.separated(
              itemCount: DummyDb.profileOptions.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      foregroundColor: const Color(0xff198EB6),
                      backgroundColor: const Color(0xffD9D9D9),
                      child: Icon(DummyDb.profileOptions[index]["icon"]),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Text(
                      DummyDb.profileOptions[index]["option"],
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    const Spacer(),
                    Visibility(
                      visible: DummyDb.profileOptions[index] !=
                              DummyDb.profileOptions.last
                          ? true
                          : false,
                      child: const Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 24,
                      ),
                    )
                  ],
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(
                  height: 29,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
