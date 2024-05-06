import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MusicScreen extends StatefulWidget {
  const MusicScreen({super.key});

  @override
  State<MusicScreen> createState() => _MusicScreenState();
}

class _MusicScreenState extends State<MusicScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color.fromRGBO(10, 7, 30, 1),
      appBar: AppBar(
        title: const Text(
          "Ophelia by Steven",
          style: TextStyle(color: Colors.white, fontFamily: 'Nunito'),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(10, 7, 30, 1),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite,
                color: Color.fromRGBO(142, 142, 142, 1),
              ))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image(image: AssetImage('assets/images/Rectangle 19.png')),
            SizedBox(
              child: Column(
                children: [
                  Text(
                    "Ophelia ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontFamily: 'Nunito',
                    ),
                  ),
                  Text(
                    "Steven price",
                    style: TextStyle(
                      color: Color.fromRGBO(142, 142, 142, 1),
                      fontSize: 18,
                      fontFamily: 'Nunito',
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                children: [
                  LinearProgressIndicator(
                    value: 0.5,
                    backgroundColor: Colors.white,
                    valueColor: AlwaysStoppedAnimation<Color>(
                        Color.fromRGBO(97, 86, 226, 1)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("1:25", style: TextStyle(color: Colors.white)),
                      Text("3:15", style: TextStyle(color: Colors.white))
                    ],
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    icon: SvgPicture.asset('assets/icons/shuffle.svg'),
                    onPressed: () {}),
                IconButton(
                    icon: SvgPicture.asset('assets/icons/skip-back.svg'),
                    onPressed: () {}),
                CircleAvatar(
                  backgroundColor: Color.fromRGBO(97, 86, 226, 1),
                  maxRadius: 35,
                  child: IconButton(
                      icon: SvgPicture.asset('assets/icons/pause.svg'),
                      onPressed: () {}),
                ),
                IconButton(
                    icon: SvgPicture.asset('assets/icons/skip-forward.svg'),
                    onPressed: () {}),
                IconButton(
                    icon: SvgPicture.asset('assets/icons/repeat.svg'),
                    onPressed: () {}),
              ],
            ),
            SizedBox()
          ],
        ),
      ),
    ));
  }
}
