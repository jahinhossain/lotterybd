import 'package:flutter/material.dart';
import 'package:lotterybd/main.dart';
import 'package:lotterybd/thirdscreen.dart';
import 'package:lotterybd/navbar.dart';
import 'package:lotterybd/login.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        backgroundColor: Color(0xFFE3F2FD),

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
                    child: Text("পরবর্তী পৃষ্ঠা ",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 30,
                            fontWeight: FontWeight.bold))),
              ),
            ],
          )),
        ));
  }
}
