import 'package:flutter/material.dart';
import 'package:njangi/screens/create_new_njangi_screen.dart';
import 'package:njangi/screens/notifications_screen.dart';
import 'package:njangi/screens/profile_screen.dart';

class DashBoardScreen extends StatefulWidget {
    DashBoardScreen({super.key,
    required this.data});
  Map<String, dynamic> data;
  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
int pageIndex = 0;
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
                children:   [
                 Text("Welcome " +  widget.data['user']['firstName'],
                 style: const TextStyle(
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
            bottomNavigationBar: bottomNav(),
        );
      },
    );
  }
  Container bottomNav(){
  return  Container(
        height: 60,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
           IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 0;
                });
              },
              icon: pageIndex == 0
                  ? const Icon(
                      Icons.home_filled,
                      color: Colors.white,
                      size: 35,
                    )
                  : const Icon(
                      Icons.home_outlined,
                      color: Colors.white,
                      size: 35,
                    ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 1;
                   Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const NotificationsScreen()));
           
                });
              },
              icon: pageIndex == 1
                  ? const Icon(
                      Icons.notifications_active,
                      color: Colors.white,
                      size: 35,
                    )
                  : const Icon(
                      Icons.notifications_active_outlined,
                      color: Colors.white,
                      size: 35,
                    ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 2;
                   Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const ProfileScreen()));
           
                });
              },
              icon: pageIndex == 2
                  ? const Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 35,
                    )
                  : const Icon(
                      Icons.person_outline,
                      color: Colors.white,
                      size: 35,
                    ),
            ),
          ],        
        ),
            );
}}