import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../model/recently_played_model.dart';
import '../model/recommend_item_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double wi = MediaQuery.of(context).size.width;
    double hi = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
      backgroundColor:Color.fromRGBO(10, 7, 30, 1),
      appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/Icon.svg'),
              color: Colors.grey,
            ),
          ],
          title: Row(
            children: [
              CircleAvatar(
                child: Image.asset('assets/images/unsplash_a3RhaDG_pNM.png'),
              ),
              SizedBox(width: wi * 0.03),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Sarwar Jahan",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Gold Member",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w200),
                  )
                ],
              )
            ],
          ),
          backgroundColor: Color.fromRGBO(10, 7, 30, 1),),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: hi * 0.01),
            Row(
              children: [
                Container(
                    padding: EdgeInsets.all(5),
                    width: wi * 0.5,
                    child: Text(
                      "Listen The Latest Musics",
                      style: TextStyle(
                          fontFamily: 'Nunito',
                          color: Colors.white,
                          fontSize: 26),
                    )),
                Container(
                  height: hi * 0.05,
                  width: wi * 0.45,
                  child: SearchBar(
                    backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(10, 7, 30, 1),),
                    hintText: 'Search Music',
                    hintStyle: MaterialStatePropertyAll(
                      TextStyle(color: Colors.grey),
                    ),
                    leading: SvgPicture.asset('assets/icons/search.svg'),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Rrcently Played",
                style: TextStyle(
                    fontFamily: 'Nunito', color: Colors.white, fontSize: 22),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RecentlyPlayedModel(
                  imageUrl: 'assets/images/Rectangle 18.png',
                  title: "The triangle",
                ),
                RecentlyPlayedModel(
                  imageUrl: 'assets/images/Rectangle 17.png',
                  title: "Dune Of Visa",
                ),
                RecentlyPlayedModel(
                  imageUrl: 'assets/images/Rectangle 16.png',
                  title: "Riskitall",
                ),
              ],
            ),
            SizedBox(height: hi * 0.02),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Recommend for you",
                style: TextStyle(
                    fontFamily: 'Nunito', color: Colors.white, fontSize: 18),
              ),
            ),
            Column(
              children: [
                RecommendItemModel(
                    imageUrl: 'assets/images/Rectangle Copy 7.png',
                    title: "Take care of you",
                    auth: "Admina Thembi",
                    steams: "114"),
                RecommendItemModel(
                    imageUrl: 'assets/images/Rectangle Copy 7 (1).png',
                    title: "The stranger inside you",
                    auth: "Jeane Lebras",
                    steams: "60.5"),
                RecommendItemModel(
                    imageUrl: 'assets/images/Rectangle Copy 7 (2).png',
                    title: "Edwall of beauty mind",
                    auth: "Jacob Givson",
                    steams: "44.3"),
                RecommendItemModel(
                    imageUrl: 'assets/images/Rectangle Copy 7.png',
                    title: "Take care of you",
                    auth: "Admina Thembi",
                    steams: "114"),
                RecommendItemModel(
                    imageUrl: 'assets/images/Rectangle Copy 7 (1).png',
                    title: "The stranger inside you",
                    auth: "Jeane Lebras",
                    steams: "60.5"),
                RecommendItemModel(
                    imageUrl: 'assets/images/Rectangle Copy 7 (2).png',
                    title: "Edwall of beauty mind",
                    auth: "Jacob Givson",
                    steams: "44.3"),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
