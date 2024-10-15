import 'package:ecommerce_shoes/features/favorite/page.dart';
import 'package:ecommerce_shoes/features/home/page/index/page.dart';
import 'package:ecommerce_shoes/features/message/page.dart';
import 'package:ecommerce_shoes/features/profile/page.dart';
import 'package:ecommerce_shoes/preference/icons/icon.dart';
import 'package:ecommerce_shoes/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}

List<Widget> pages = const [
  HomePage(),
  MessagePage(),
  FavoritePage(),
  profilePage(),
];
//
// bottomNavigationBar: ClipRRect(
// borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
// child: BottomNavigationBar(
// type: BottomNavigationBarType.fixed,
// showSelectedLabels: false,
// showUnselectedLabels: false,
// backgroundColor: const Color(0xff252836),
// items: const [
// BottomNavigationBarItem(
// icon: Icon(
// CustomIcon.home,
// color: Colors.grey,
// ),
// label: "",
// ),
// BottomNavigationBarItem(
// icon: Icon(
// CustomIcon.message,
// color: Colors.grey,
// ),
// label: "",
// ),
// BottomNavigationBarItem(
// icon: Icon(
// CustomIcon.favorite,
// color: Colors.grey,
// ),
// label: "",
// ),
// BottomNavigationBarItem(
// icon: Icon(
// CustomIcon.profile,
// color: Colors.grey,
// ),
// label: "",
// ),
// ],
// ),
// ),

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex = 0;

  IconButton buildItemNav(IconData icon, int index) {
    return IconButton(
      onPressed: () {
        setState(() {
          selectedIndex = index;
        });
      },
      icon: Icon(
        icon,
        color: selectedIndex == index ? const Color(0xff6C5ECF) : const Color(0xff808191),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1F1D2B),
      body: pages[selectedIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xff38ABBE),
        shape: const CircleBorder(),
        child: const Icon(Icons.shopping_bag),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(30),
        ),
        child: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          height: 80,
          color: const Color(0xff292836),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildItemNav(CustomIcon.home, 0),
              buildItemNav(CustomIcon.message, 1),
              const SizedBox(
                width: 40,
              ),
              buildItemNav(CustomIcon.favorite, 2),
              buildItemNav(CustomIcon.profile, 3),
            ],
          ),
        ),
      ),
    );
  }
}
