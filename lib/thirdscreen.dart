import 'package:lotterybd/secondscreen.dart';
import 'package:flutter/material.dart';
import 'package:lotterybd/fourthscreen.dart';

class thirdscreen extends StatelessWidget {
  const thirdscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
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
        body: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  Padding(
                      padding: const EdgeInsets.only(top: 40, left: 25, bottom: 30),
                      child: Text("লটারি কিনতে এখানে ক্লিক করুন",
                          style: TextStyle(
                              color: Colors.brown[800],
                              fontSize: 25,
                              fontWeight: FontWeight.bold))),

                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Container(
                      width: 200,
                      height: 300,
                      color: Colors.orange,
                      alignment: Alignment.center,
                      child: Container(
                        width: 100,
                        height: 150,
                        color: Colors.white,
                        child:  Padding(
                          padding: const EdgeInsets.only(top: 80),
                          child: Text("লটারি",style: TextStyle(
                              color: Colors.brown[800],
                              fontSize: 25,
                              fontWeight: FontWeight.bold),textAlign: TextAlign.center),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(

                    height: 20

                  ),

                  Container(
                    child: Column(
                      children: [

                        Text("পুরস্কার  ",style: TextStyle(
                            color: Colors.brown[800],
                            fontSize: 25,
                            fontWeight: FontWeight.bold)),

                        Text("১ প্রথম পুরস্কার১০০,০০০ টাকা ",style: TextStyle(
                            color: Colors.brown[800],
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                        Text("২) দ্বিতীয় পুরস্কার ৫০,০০০ টাকা ",style: TextStyle(
                            color: Colors.brown[800],
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                        Text("৩) তৃতীয় পুরুষর২০,০০০ টাকা",style: TextStyle(
                            color: Colors.brown[800],
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                        Text("৪)চতুর্থ পু র১০,০০০ টাকা",style: TextStyle(
                            color: Colors.brown[800],
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                        Text("৫) পঞ্চম প র ৫,০০০ টাকা",style: TextStyle(
                            color: Colors.brown[800],
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),

                        SizedBox(

                            height: 10

                        ),

                       /* GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => fourthscreen()),
                              );
                            },
                            child: Text("পরবর্তী পৃষ্ঠা ",
                                style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold))
                        ) */


                      ],
                    )


                  )

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
