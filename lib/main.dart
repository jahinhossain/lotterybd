import 'package:flutter/material.dart';
import 'dart:async';
import 'package:lotterybd/secondscreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lottery',
        debugShowCheckedModeBanner: false,

      home: homepage()
    );
  }
}

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override

  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                SecondScreen()
            )
        )
    );
  }

   Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE3F2FD),
     body: Stack(
       children: [
         Align(
           alignment: AlignmentDirectional(0.06, -0.03),
           child: Text(
             'উদ্যোক্তা ',style: TextStyle(color: Colors.brown[800],fontSize: 40,fontWeight:FontWeight.bold)),
         ),
         Align(
           alignment: AlignmentDirectional(0.12, 0.17),
           child:Text("র‍্যাফেল ড্র ২০২২",style: TextStyle(color: Colors.brown[800],fontSize: 40,fontWeight: FontWeight.bold),)
         ),
       ],
     )
    );
  }
}



