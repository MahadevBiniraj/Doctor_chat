import 'package:doctor_channeling_app/view/default_screen/default_screen.dart';
import 'package:doctor_channeling_app/view/messages_screen/doctors_conversation_view.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultScreen(),
    );
  }
}
