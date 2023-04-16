
// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:project_end/widgets/home_app_bar.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

class WelcomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      decoration: BoxDecoration(
        image:DecorationImage(
          image: AssetImage("assets/images/bg.jpg"),
          fit:BoxFit.cover,
          opacity:0.7,
          )),
      
      child: Material(
         color: Colors.transparent,
        child:SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical:65,horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "READ TO",
              style: TextStyle(
                color: Colors.white,
                fontSize: 35,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
              ),
            ),
            SizedBox(height: 2,),
            Text(
              "REMEMBER",
              style: TextStyle(
                color: Colors.white.withOpacity(0.9),
                fontSize: 35,
                fontWeight: FontWeight.w400,
                letterSpacing: 1.5,
              )
            ),
            SizedBox(height: 12),
            Text(
              "Thanks the author",
            style: TextStyle(
              color: Colors.white.withOpacity(0.7),
              fontSize: 16,
              letterSpacing: 1.2,
            ),
            ),
            SizedBox(height:30),

              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context)=> HomePage(),
                
                  ));
                },
              child: Ink(
                padding:EdgeInsets.all(15),
                decoration: BoxDecoration(
                color:Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Icon(
                Icons.arrow_forward_ios,
                color: Colors.black54,
                size:20,
              ),
              ),
              ),
          ],
         ),
          ),
        ),
        ),
    );
  }
}


