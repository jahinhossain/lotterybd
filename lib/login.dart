import 'package:flutter/material.dart';
import 'package:lotterybd/thirdscreen.dart';
import 'package:lotterybd/signup.dart';
import 'package:lotterybd/navbar.dart';

class loginScreen extends StatelessWidget {
  const loginScreen({Key? key}) : super(key: key);

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
        appBar: AppBar(
          backgroundColor: Colors.brown,
        ),
          backgroundColor:Colors.transparent,
        body: Container(
          alignment:Alignment.center,
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("এখানে লগইন করুন",style: TextStyle(
                  color: Colors.brown[800],
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(

                maxLines: 1,
                    decoration: InputDecoration(hintText: 'Enter your Email',
                prefixIcon  : const Icon(Icons.email),
                        fillColor: Colors.white,
                 border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(10),



                )
                )),
              ),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(

                    maxLines: 1,
                    obscureText: true,
                    decoration: InputDecoration(hintText: 'Enter your Password',
                        fillColor: Colors.white,
                        prefixIcon  : const Icon(Icons.lock),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                    )),
              ),

              SizedBox(height: 20,),

              GestureDetector(
                onTap: () {

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => navbar()),
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 50,/// Change height and width as per your need.
                  width: 300,
                  child: Container(
                    color: Colors.brown[700],
                    alignment: Alignment.center,


                    child:   Text("লগইন",style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),),


                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                ),

                /* Container(
                  alignment: Alignment.center,
                  color: Colors.brown,
                  height: 50,
                  width: 300,
                  child:Text("লগইন",style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),textAlign: TextAlign.center,) ,
                ), */
              ),

            SizedBox(height: 15,),


            Padding(
              padding: const EdgeInsets.only(left: 30,top:20,right: 10),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => signup()),
                  );
                },
                child: Text("আপনার অ্যাকাউন্ট না থাকলে এখানে ক্লিক করুন",style: TextStyle(
                      color: Colors.brown[800],
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
              ),
            )

            ],
          )
        )
      ),
    );
  }
}
