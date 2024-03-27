import 'package:ecommerc/model/favourite_album_model.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    double wi = MediaQuery
        .of(context)
        .size
        .width;
    double hi = MediaQuery
        .of(context)
        .size
        .height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(10, 7, 30, 1),
        // appBar: AppBar(
        //   backgroundColor: Color.fromRGBO(10, 7, 30, 1),
        //   title: IconButton(
        //     onPressed: () {},
        //     icon: Icon(
        //       Icons.arrow_back,
        //       color: Colors.white,
        //     ),
        //   ),
        // ),
        body: SingleChildScrollView(
          primary: true,
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: hi * 0.05),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(10)),
                width: wi * 0.25,
                height: hi * 0.13,
                child:
                Image.asset('assets/images/unsplash_a3RhaDG_pNM1.png')),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sarwar Jahan",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontFamily: 'Nunito',
                  ),
                ),
                Text(
                  "sarwarmusic@gmail.com",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: hi * 0.02),
                Text(
                  "Gold Member",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontFamily: 'Nunito',
                  ),
                ),
                SizedBox(height: hi * 0.02),
                Text(
                  "Love Music and I am not\n an Musician .",
                  maxLines: 2,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontFamily: 'Nunito',
                  ),
                ),
              ],
            )
          ],
        ),
        SizedBox(height: hi * 0.05),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Favourite Album",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'Nunito',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FavouriteAlbumModel(
                imageUrl: 'assets/images/Rectangle 24.png',
              ),
              FavouriteAlbumModel(
                imageUrl: 'assets/images/Rectangle 23.png',
              ),
              FavouriteAlbumModel(
                imageUrl: 'assets/images/Rectangle 22.png',
              ),

            ],),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Favourite Music",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'Nunito',
            ),
          ),
        ),
        SizedBox(
          height: hi*0.58,
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, // Number of columns
              crossAxisSpacing: 9, // Spacing between columns
              mainAxisSpacing: 10, // Spacing between rows
            ),
            itemCount: 12, // Number of items in the grid
            itemBuilder: (BuildContext context, int index) {
              final imageUrl = [
                'assets/images/Rectangle 25.png',
                'assets/images/Rectangle 26.png',
                'assets/images/Rectangle 27.png',
                'assets/images/Rectangle 29.png',
                'assets/images/Rectangle 30.png',
                'assets/images/Rectangle 31.png',
                'assets/images/Rectangle 25.png',
                'assets/images/Rectangle 26.png',
                'assets/images/Rectangle 27.png',
                'assets/images/Rectangle 29.png',
                'assets/images/Rectangle 30.png',
                'assets/images/Rectangle 31.png',
              ][index]; // Replace with your actual image URLs

              return FavouriteAlbumModel(
                imageUrl: imageUrl,
              );
            },
          ),
        ),
      ],
    ),
    ),)
    );
  }
}
