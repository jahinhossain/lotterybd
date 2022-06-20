import 'package:flutter/material.dart';
import 'package:lotterybd/main.dart';
import 'package:lotterybd/thirdscreen.dart';
import 'package:lotterybd/navbar.dart';
import 'package:lotterybd/login.dart';
import 'package:getwidget/getwidget.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(  decoration: BoxDecoration(
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

          body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: (Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("বিশেষ দ্রষ্টব্য",
                    style: TextStyle(
                        color: Colors.brown[800],
                        fontSize: 40,
                        fontWeight: FontWeight.bold)),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                      "শুভেচ্ছা গ্রহণ করবেন!  আধুনিক পৃথিবীর অগ্রযাত্রায়  তরুন উদ্যোক্তাদের ভুমিকা অপরিসীম। উন্নত রাষ্ট্রসমুহ তরুণ উদ্যোক্তাদের বিভিন্ন ভাবে সহযোগিতা করে থাকে।  বাংলাদেশ ও এগিয়ে যাচ্ছে তরুণ উদ্যোক্তাদের হাত ধরে। কিন্তু বাংলাদেশের উদ্যোক্তাদের অন্যতম প্রতিবন্ধকতা হল  ফান্ড  ।   আর আমরা এই ফান্ড এর যোগান দিতে নতুন একটা উদ্যোগ নিয়েছি।  উদ্যোক্তা  র‍্যাফেল ড্র ২০২২!  আপনি ও অংশ নিন। লক্ষ টাকা জিতুন নতুন উদ্যোক্তা হউন ",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center),
                ),


               Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => loginScreen()),
                        );
                      },
                      child:Container(
                        alignment: Alignment.center,
                        height: 50,/// Change height and width as per your need.
                        width: 300,
                        child: Container(
                            color: Colors.red,
                              alignment: Alignment.center,


                              child:   Text("পরবর্তী পৃষ্ঠা",style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),),


                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                      ), /* Container(
                        width: 300,
                        height: 50,
                        color: Colors.white54,


                        alignment: Alignment.center,
                        child: Text("পরবর্তী পৃষ্ঠা ",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.bold)),
                      ) */

                  ),
                ),
              ],
            )),
          )),
    );
  }
}
