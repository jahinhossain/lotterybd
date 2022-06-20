import 'package:flutter/material.dart';
import 'package:lotterybd/thirdscreen.dart';
import 'package:lotterybd/signup.dart';

class loginScreen extends StatelessWidget {
  const loginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
      ),
        backgroundColor: Color(0xFFE3F2FD),
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
                  MaterialPageRoute(builder: (context) => thirdscreen()),
                );
              },
              child: Container(
                color: Colors.brown,
                height: 50,
                width: 300,
                child:Text("Login",style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),textAlign: TextAlign.center,) ,
              ),
            ),

          SizedBox(height: 15,),
                   

          Padding(
            padding: const EdgeInsets.only(left: 30,top:20,right: 10),
            child: GestureDetector(
              onTap: (){},
              child: Text("আপনার অ্যাকাউন্ট না থাকলে এখানে ক্লিক করুন",style: TextStyle(
                    color: Colors.brown[800],
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
            ),
          )
            
          ],
        )
      )
    );
  }
}
