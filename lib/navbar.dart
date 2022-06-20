
import 'package:flutter/material.dart';
import 'package:lotterybd/thirdscreen.dart';
import 'package:lotterybd/fourthscreen.dart';


class navbar extends StatefulWidget {
  const navbar({Key? key}) : super(key: key);

  @override
  State<navbar> createState() => _navbarState();
}

class _navbarState extends State<navbar> {

  int _selectedIndex = 1;
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: PageView(
        controller: pageController,

        children: [
          thirdscreen(),
          fourthscreen(),
        ],

      ),

    );
  }
}
