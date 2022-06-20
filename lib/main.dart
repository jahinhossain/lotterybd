import 'package:flutter/material.dart';
import 'dart:async';
import 'package:lotterybd/secondscreen.dart';
import 'package:lottie/lottie.dart';
import 'package:animated_text_kit/animated_text_kit.dart';


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
    Timer(Duration(seconds: 5),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                SecondScreen()
            )
        )
    );
  }

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
      child: Scaffold(
        backgroundColor: Colors.transparent,
       body: Stack(
         children: [

           Align(
             alignment: AlignmentDirectional(0.06, -0.03),
             child:  AnimatedTextKit(
               animatedTexts: [
                 TypewriterAnimatedText(
                   'উদ্যোক্তা',
                   textStyle: const TextStyle(
                     fontSize: 32.0,
                     fontWeight: FontWeight.bold,

                   ),
                   speed: const Duration(milliseconds: 100),
                 ),
               ],

               totalRepeatCount: 4,
               pause: const Duration(milliseconds: 500),
               displayFullTextOnTap: true,

             ),
           ),
           Align(
               alignment: AlignmentDirectional(0.12, 0.17),
               child:AnimatedTextKit(
                 animatedTexts: [
                   TypewriterAnimatedText(
                     'র‍্যাফেল ড্র ২০২২',
                     textStyle: const TextStyle(
                       fontSize: 32.0,
                       fontWeight: FontWeight.bold,

                     ),
                     speed: const Duration(milliseconds: 100),
                   ),
                 ],

                 totalRepeatCount: 4,
                 pause: const Duration(milliseconds: 500),
                 displayFullTextOnTap: true,

               ),
           ),




          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Container(
              height: 200,
              width: 500,
              alignment: Alignment.topCenter,
              child: Lottie.network("https://assets8.lottiefiles.com/private_files/lf30_c7fgjctn.json"),
            ),
          ),


           /*Align(
             alignment: AlignmentDirectional(0.06, -0.03),
             child: Text(
               'উদ্যোক্তা ',style: TextStyle(color: Colors.brown[800],fontSize: 40,fontWeight:FontWeight.bold)),
           ),*/
          /* Align(
             alignment: AlignmentDirectional(0.12, 0.17),
             child:Text("র‍্যাফেল ড্র ২০২২",style: TextStyle(color: Colors.brown[800],fontSize: 40,fontWeight: FontWeight.bold),)
           ), */
         ],
       )
      ),
    );
  }
}



