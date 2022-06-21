import 'package:flutter/material.dart';

class searchscreen extends StatefulWidget {
  const searchscreen({Key? key}) : super(key: key);

  @override
  State<searchscreen> createState() => _searchscreenState();
}

class _searchscreenState extends State<searchscreen> {
  @override
  Widget build(BuildContext context) {
    return Container(decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.grey,
            Colors.white,
          ],
        )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(backgroundColor: Colors.brown,),
        body: Center(child: Text("UNDER CONSTRUCTION"))
      ),
    );
  }
}
