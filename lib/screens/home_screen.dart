import 'package:flutter/material.dart';
import 'package:islamy_app/screens/hadith_screen.dart';
import 'package:islamy_app/screens/quran_screen.dart';
import 'package:islamy_app/screens/radio_screen.dart';
import 'package:islamy_app/screens/tasbih_screen.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int tabsIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("assets/images/background_light.png")),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Center(
              child: Text(
            "Islamy",
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.w500, color: Colors.black),
          )),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Color(0xffB7935F),
          ),
          child: BottomNavigationBar(
            selectedIconTheme:IconThemeData (color: Colors.black),
            unselectedIconTheme: IconThemeData(color: Colors.white),
            fixedColor:  Colors.black,
            currentIndex: tabsIndex,
            onTap: (int index){
              tabsIndex = index ;
              setState((){});
            },
            items: const [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/radio_blue.png")),
                  label: "Radio"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/sebha_blue.png")),
                  label: "Tasbeih"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/hadith.png")),
                  label: "Hadith"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/quran.png")),
                  label: "Quran"),
            ],
          ),
        ),
        body: tabs[tabsIndex],
      ),
    );
  }
}
List<Widget> tabs = [RadioScreen(),TasbihScreen(),HadithScreen(),QuranScreen()];
