import 'package:flutter/material.dart';

class DummyDb {
  static List conversation = [
    {"message": "Rorem ipsum dolor sit  adipiscing elit.", "doctor": false},
    {"message": "Rorem ipsum dolor sit  adipiscing elit.", "doctor": false},
    {"message": "Rorem ipsum dolor sit  adipiscing elit.", "doctor": true},
    {"message": "Rorem ipsum dolor sit  adipiscing elit.", "doctor": false},
    {"message": "Rorem ipsum dolor sit  adipiscing elit.", "doctor": false},
    {"message": "Rorem ipsum dolor sit  adipiscing elit.", "doctor": true},
    {"message": "Rorem ipsum dolor sit  adipiscing elit.", "doctor": false},
    {"message": "Rorem ipsum dolor sit  adipiscing elit.", "doctor": false},
    {"message": "Rorem ipsum dolor sit  adipiscing elit.", "doctor": false},
    {"message": "Rorem ipsum dolor sit  adipiscing elit.", "doctor": true},
    {"message": "Rorem ipsum dolor sit  adipiscing elit.", "doctor": false},
    {"message": "Rorem ipsum dolor sit  adipiscing elit.", "doctor": true},
    {"message": "Rorem ipsum dolor sit  adipiscing elit.", "doctor": false},
  ];

  static List doctorsList = [
    {
      "doctor": "Dr. Upul",
      "profilepic":
          "https://t3.ftcdn.net/jpg/02/60/04/08/360_F_260040863_fYxB1SnrzgJ9AOkcT0hoe7IEFtsPiHAD.jpg"
    },
    {
      "doctor": "Dr. Saravan",
      "profilepic":
          "https://t3.ftcdn.net/jpg/02/60/04/08/360_F_260040863_fYxB1SnrzgJ9AOkcT0hoe7IEFtsPiHAD.jpg"
    },
    {
      "doctor": "Dr. muhammed",
      "profilepic":
          "https://t3.ftcdn.net/jpg/02/60/04/08/360_F_260040863_fYxB1SnrzgJ9AOkcT0hoe7IEFtsPiHAD.jpg"
    },
    {
      "doctor": "Dr. mahadev",
      "profilepic":
          "https://t3.ftcdn.net/jpg/02/60/04/08/360_F_260040863_fYxB1SnrzgJ9AOkcT0hoe7IEFtsPiHAD.jpg"
    },
  ];

  static List profileOptions = [
    {"icon": Icons.history, "option": "History"},
    {"icon": Icons.account_circle, "option": "Personal Detailes"},
    {"icon": Icons.location_on, "option": "Location"},
    {"icon": Icons.payments, "option": "Payment Method"},
    {"icon": Icons.settings, "option": "Settings"},
    {"icon": Icons.help, "option": "Help"},
    {"icon": Icons.logout, "option": "Logout"},
  ];
}
