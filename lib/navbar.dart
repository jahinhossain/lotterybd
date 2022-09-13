
import 'package:flutter/material.dart';
import 'package:lotterybd/searchscreen.dart';
import 'package:lotterybd/thirdscreen.dart';
import 'package:lotterybd/fourthscreen.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:lotterybd/profilepage.dart';






class navbar extends StatefulWidget {
  const navbar({Key? key}) : super(key: key);

  @override
  State<navbar> createState() => _navbarState();
}

class _navbarState extends State<navbar> {

  int _selectedIndex = 0;
  final tabs = [
    thirdscreen(),
   fourthscreen(),
  searchscreen(),
    profile(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: tabs[_selectedIndex],
       bottomNavigationBar: Container(
         color: Colors.black,
         child: Padding(
           padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
           child: GNav(

           selectedIndex: _selectedIndex,
           onTabChange: (index) {
    setState(() {
    _selectedIndex = index;
    });},

             iconSize: 30,
             gap: 8,
             backgroundColor: Colors.black,
             color: Colors.white,
             activeColor: Colors.white,
             tabBackgroundColor: Colors.grey.shade700,
                padding: EdgeInsets.all(16),

             tabs: const[
               GButton(icon: Icons.home,
                 text: 'Home',
               ),
               GButton(icon: Icons.monetization_on_outlined,
                 text: 'Winner',
               ),
               GButton(icon: Icons.search,
               text: 'Search'),
               GButton(icon: Icons.people,
               text: 'User Profile',
               ),
             ],


      ),
         ),
       ),

    );
  }
}
