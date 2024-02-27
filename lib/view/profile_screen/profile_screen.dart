import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {s
    return const Column(
      children: [
        CircleAvatar(
          radius: 65,
        ),
        Text("Chathura Sampath"),
        
      ],
    );
  }
}
