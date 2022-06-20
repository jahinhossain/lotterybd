import 'package:flutter/material.dart';

class customcontainer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(

          decoration: BoxDecoration(
          gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.blue,
            Colors.red,
          ],
    )),
    );
  }
}
