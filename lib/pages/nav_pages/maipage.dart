import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:nepal_app/pages/nav_pages/HomePage.dart';
import 'package:nepal_app/pages/nav_pages/detail_page.dart';
import 'package:nepal_app/pages/nav_pages/search_page.dart';

import 'bar_item_page.dart';
import 'my_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
List pages=[
HomePage(),
Detailpage(),
SearchPage(),
MyPage()

];

int currentIndex=0;
void onTap(int index){
setState(() {
  currentIndex=index;
});

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        
       
        onTap: onTap,
        currentIndex: currentIndex,
      selectedItemColor: Colors.purpleAccent,
      unselectedItemColor: Colors.black,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      elevation: 0,
        items: const [
        BottomNavigationBarItem(
          label: 'Home',
          icon: Icon(Icons.apps),
        ),
         BottomNavigationBarItem(
          label: 'book',
          icon: Icon(Icons.bookmark_add_outlined),
        ),
         BottomNavigationBarItem(
          label: 'Search',
          icon: Icon(Icons.search),
        ),
         BottomNavigationBarItem(
          label: 'My',
          icon: Icon(Icons.person),
        ),
      ]),
    );
  }
}
