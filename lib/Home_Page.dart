import 'package:ballerunit/main.dart';
import 'package:flutter/material.dart';
import 'package:ballerunit/NewsPage.dart';
import 'package:ballerunit/Calendar.dart';
import 'package:ballerunit/Settings.dart';
import 'package:ballerunit/ScoresPage.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {

  PageController pageController= PageController();
  List<Widget> _screens =[
    News(), Scores(),
    Calendar(), Settings(),
  ];
  int _selectedIndex = 0;
  void _onpageChanged (int index){
_selectedIndex = index;
  }
  void _itemTapped(int selectedIndex){
setState(() {
  pageController.jumpToPage(selectedIndex);
});
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: PageView(
        controller: pageController ,
        children: _screens,
        onPageChanged: _onpageChanged ,
        physics: NeverScrollableScrollPhysics(),
      ),
     bottomNavigationBar: BottomNavigationBar(
       backgroundColor: seccolor,

       type: BottomNavigationBarType.fixed,
         onTap: _itemTapped,
         currentIndex :_selectedIndex,

         items: [

           BottomNavigationBarItem(
             icon: Icon(Icons.home,color: Colors.grey,),
             title: Text("News", style: TextStyle(color: plainColor,fontSize: 20.0), )
           ),
           BottomNavigationBarItem(
               icon: Icon(Icons.polymer,color: Colors.grey,),
               title: Text("Scores", style: TextStyle(color: plainColor,fontSize: 20.0),)
           ),
           BottomNavigationBarItem(
               icon: Icon(Icons.calendar_today,color: Colors.grey,),
               title: Text("Calendar", style: TextStyle(color: plainColor,fontSize: 16.0),)
           ),
           BottomNavigationBarItem(
               icon: Icon(Icons.settings,color: Colors.grey,),
               title: Text("Settings", style: TextStyle(color: plainColor,fontSize: 20.0),)
           ),
         ],
     ),
    );
  }
}
