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
    },
    {
      "doctor": "Dr. Silva",
    },
    {
      "doctor": "Dr. Pawani",
    },
    {
      "doctor": "Dr. Rayan",
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
