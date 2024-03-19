import 'package:flutter/material.dart';

class RecentlyPlayedModel extends StatelessWidget {
  const RecentlyPlayedModel(
      {super.key, required this.imageUrl, required this.title,});

  final String imageUrl;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: 81,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10)),
            child: Image.asset(imageUrl)),
        SizedBox(height: 10),
        Text(
          title,
          style: TextStyle(
              fontFamily: 'Nunito',
              color: Colors.white,
              fontSize: 14),
        ),
      ],
    );
  }
}
