import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return  LayoutBuilder(
      builder: (context, box){
        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding:   EdgeInsets.all(box.maxHeight * .025),
              child: ListView(  
                children: [
                 const  Text("Welcome @username",
                 style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w600
                 ),)
                ],
              ),
            )),         
        );
      },
    );
  }
}