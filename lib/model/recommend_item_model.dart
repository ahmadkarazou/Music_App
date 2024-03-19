import 'package:flutter/material.dart';

class RecommendItemModel extends StatelessWidget {
  const RecommendItemModel({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.auth,
    required this.steams,
  });

  final String imageUrl;
  final String title;
  final String auth;
  final String steams;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
            child: Image.asset(
              imageUrl,
              width: 88,
              height: 88,
            ),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                    fontFamily: 'Nunito', color: Colors.white, fontSize: 17),
              ),
              Text(
                auth,
                style: TextStyle(
                    fontFamily: 'Nunito', color: Colors.white, fontSize: 13),
              ),
              Text(
                "${steams}k / steams",
                style: TextStyle(
                    fontFamily: 'Nunito', color: Colors.white, fontSize: 13),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
