import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(
          flex: 1,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 26),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "New",
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
                Text(
                  "Mark All",
                  style: TextStyle(
                    fontSize: 24,
                  ),
                )
              ],
            ),
          ),
        ),
        Expanded(
          flex: 6,
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: 20,
            itemBuilder: (context, index) {
              return Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                height: 73,
                decoration: BoxDecoration(
                    color: const Color(0xffD9D9D9).withOpacity(0.3),
                    borderRadius: BorderRadius.circular(10)),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.notifications),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "April 2023",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                            width: 210,
                            child: Text(
                              "Corem ipsum dolor sit amet,adipiscing elit.",
                              overflow: TextOverflow.ellipsis,
                            ))
                      ],
                    ),
                    Text("15 min")
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(
              height: 15,
            ),
          ),
        )
      ],
    );
  }
}
