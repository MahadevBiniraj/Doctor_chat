import 'package:flutter/material.dart';

class ActiveDoctorsList extends StatelessWidget {
  const ActiveDoctorsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.separated(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Stack(children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?q=80&w=1770&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
            ),
            Positioned(
              right: 0,
              top: 7,
              child: CircleAvatar(
                radius: 7.5,
                backgroundColor: Color(0xff15B826),
              ),
            )
          ]);
        },
        separatorBuilder: (context, index) => const SizedBox(
          width: 24,
        ),
      ),
    );
  }
}
