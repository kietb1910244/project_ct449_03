

// ignore_for_file: prefer_const_constructors, 
// use_key_in_widget_constructors

import 'package:flutter/material.dart';

import '../widgets/post_app_bar.dart';
import '../widgets/post_bottom_bar.dart';

class PostScreen extends StatelessWidget{
  const PostScreen(this.index,{super.key});
  final int index;
  @override
  Widget build(BuildContext conext){
    
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/sach${index}.jpg"),
          fit: BoxFit.cover,
          opacity: 0.7,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90),
          child: PostAppBar(),
        ),
        bottomNavigationBar: PostBottomBar(index-1),
      ),
    );
  }
}