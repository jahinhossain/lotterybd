import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lotterybd/login.dart';
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
            Colors.grey,
            Colors.white,
          ],
        )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(backgroundColor: Colors.brown,),

        body: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Container(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text("এখানে সাইন আপ করুন",style: TextStyle(
                        color: Colors.brown[800],
                        fontSize: 30,
                        fontWeight: FontWeight.bold)),
                    SizedBox(height: 20,),
                    TextFormField(

                        maxLines: 1,

                        decoration: InputDecoration(hintText: 'Panel',
                            fillColor: Colors.white,
                            prefixIcon  : const Icon(Icons.admin_panel_settings),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        maxLines: 1,

                        decoration: InputDecoration(hintText: 'Enter your Number',
                            fillColor: Colors.white,

                            prefixIcon  : const Icon(Icons.phone_android),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )
                        )),
                    SizedBox(
                      height: 10,
                    ),

                    TextFormField(

                        maxLines: 1,

                        decoration: InputDecoration(hintText: 'Name',
                            fillColor: Colors.white,
                            prefixIcon  : const Icon(Icons.supervised_user_circle_sharp),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )
                        )),

                    SizedBox(
                      height: 10,
                    ),
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

                        decoration: InputDecoration(hintText: 'Country',
                            fillColor: Colors.white,
                            prefixIcon  : const Icon(Icons.flag),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(

                        maxLines: 1,

                        decoration: InputDecoration(hintText: 'City',
                            fillColor: Colors.white,
                            prefixIcon  : const Icon(Icons.location_city),
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
                        alignment: Alignment.center,
                        height: 50,/// Change height and width as per your need.
                        width: 300,
                        child: Container(
                          color: Colors.brown[700],
                          alignment: Alignment.center,


                          child:   Text("Signup",style: TextStyle(
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

                   /* GestureDetector(
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
                    ), */

                    Padding(
                      padding: const EdgeInsets.only(left: 30,top:20,right: 10),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => loginScreen()),
                          );
                        },
                        child: Text("আপনার যদি একটি অ্যাকাউন্ট থাকে তবে এখানে প্রেস করুন",style: TextStyle(
                            color: Colors.brown[800],
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                      ),
                    )





                  ],
                ),
              ),
            )
          ),
        ),

      ),
    );
  }
}
