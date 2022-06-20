import 'package:flutter/material.dart';

class fourthscreen extends StatelessWidget {
  const fourthscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE3F2FD),

      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Container(
              alignment: Alignment.topCenter,
          child: Text("বিজয়ীদের নাম",style: TextStyle(
              color: Colors.brown[800],
              fontSize: 25,
              fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}
