import 'package:flutter/material.dart';

class SearchBars extends StatelessWidget {
  const SearchBars({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xffD9D9D9).withOpacity(0.3)),
      child: const Row(
        children: [
          Icon(
            Icons.search,
          ),
          SizedBox(
            width: 24,
          ),
          Text("Search a doctor"),
          Spacer(),
          Icon(Icons.mic)
        ],
      ),
    );
  }
}
