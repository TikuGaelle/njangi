import 'package:flutter/material.dart';  
import 'package:njangi/screens/create_new_njangi_screen.dart';

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
              child:  
              ListView(  
                children: const [
                 Text("Welcome @username",
                 style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600
                 ),)
                ],
              ),
            )), 
            floatingActionButton: FloatingActionButton(  
              onPressed: (){ 
                Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const CreateNewNjangi()));
                  }, 
              child: const Icon(  
                Icons.add,

              ),
            ),
            //bottomNavigationBar: const BottomNavBar(),
        );
      },
    );
  }
}