import 'package:flutter/material.dart';

class FavouriteAlbumModel extends StatelessWidget {
  const FavouriteAlbumModel({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: 111,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: Image.asset(imageUrl)),
      ],
    );
  }
}
