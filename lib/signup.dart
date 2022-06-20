import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lotterybd/thirdscreen.dart';
import 'package:lotterybd/navbar.dart';


class signup extends StatelessWidget {
  const signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container( decoration: BoxDecoration(
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
        appBar: AppBar(backgroundColor: Colors.brown,),

        body: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Container(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Text("এখানে সাইন আপ করুন",style: TextStyle(
                      color: Colors.brown[800],
                      fontSize: 30,
                      fontWeight: FontWeight.bold)),
                  SizedBox(height: 20,),
                  TextFormField(

                      maxLines: 1,

                      decoration: InputDecoration(hintText: 'Enter your Email',
                          fillColor: Colors.white,
                          prefixIcon  : const Icon(Icons.email),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )
                      )),

                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(

                      maxLines: 1,
                      obscureText: true,
                      decoration: InputDecoration(hintText: 'Enter your Password',
                          fillColor: Colors.white,
                          prefixIcon  : const Icon(Icons.lock),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(

                      maxLines: 1,

                      decoration: InputDecoration(hintText: 'Username',
                          fillColor: Colors.white,
                          prefixIcon  : const Icon(Icons.supervised_user_circle_sharp),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )
                      )),

                  SizedBox(height: 20,),

                  GestureDetector(
                    onTap: () {

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => navbar()),
                      );
                    },
                    child: Container(
                      color: Colors.brown,
                      height: 50,
                      width: 300,
                      child:Text("Signup",style: TextStyle(
                          color: Colors.black,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),textAlign: TextAlign.center,) ,
                    ),
                  ),



                ],
              ),
            )
          ),
        ),

      ),
    );
  }
}
