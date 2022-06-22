import 'package:flutter/material.dart';


class fourthscreen extends StatelessWidget {
  const fourthscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.lightGreen,
              Colors.green,
            ],
          )),

      child: Scaffold(
        backgroundColor: Colors.transparent,
         appBar: AppBar(backgroundColor: Colors.brown,),
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
      ),
    );
  }
}
