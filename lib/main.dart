import 'package:ecommerc/UI/favourite_screen.dart';
import 'package:ecommerc/UI/home_sccren.dart';
import 'package:ecommerc/UI/music_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _SelectedScreenIndex = 0;
  final List _screens = [
    {"screen": HomeScreen()},
    {"screen": MusicScreen()},
    {"screen": FavouriteScreen()},
  ];

  void _selectScreen(int index) {
    setState(() {
      _SelectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color.fromRGBO(10, 7, 30, 1),
      body: _screens[_SelectedScreenIndex]["screen"],
      bottomNavigationBar: Container(
        height: 70,
        margin: EdgeInsets.symmetric(horizontal: 10),

        decoration: BoxDecoration(
             color: Color.fromRGBO(10, 7, 30, 1),
             borderRadius: BorderRadius.circular(50),
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(97, 86, 226, .25),
                blurRadius: 30,
                spreadRadius: 0.1,
              ),
            ]),
        //
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(40), topLeft: Radius.circular(40)),
          child: BottomNavigationBar(
              showSelectedLabels: false,
              useLegacyColorScheme: false,

              selectedItemColor: Color.fromRGBO(97, 86, 226, 1),
              backgroundColor: Color.fromRGBO(10, 7, 30, 1),
              // fixedColor: Color.fromRGBO(97, 86, 226, 1),
              unselectedItemColor: Colors.grey,
              currentIndex: _SelectedScreenIndex,
              onTap: _selectScreen,
              items: [
                BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      'assets/icons/home.svg',
                      color: (_SelectedScreenIndex == 0)
                          ? Color.fromRGBO(97, 86, 226, 1)
                          : Colors.grey,
                    ),
                    label: ""),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      'assets/icons/Group 160.svg',
                      color: (_SelectedScreenIndex == 1)
                          ? Color.fromRGBO(97, 86, 226, 1)
                          : Colors.grey,
                    ),
                    label: ""),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset(
                      'assets/icons/heart.svg',
                      color: (_SelectedScreenIndex == 2)
                          ? Color.fromRGBO(97, 86, 226, 1)
                          : Colors.grey,
                    ),
                    label: ""),
                // BottomNavigationBarItem(
                //     icon: SvgPicture.asset(
                //       'assets/icons/heart.svg',
                //       color: (_SelectedScreenIndex == 2)
                //           ? Color.fromRGBO(97, 86, 226, 1)
                //           : Colors.grey,
                //     ),
                //     label: ""),
              ]),
        ),
      ),
    ));
  }
}
