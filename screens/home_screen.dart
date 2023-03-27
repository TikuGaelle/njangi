import 'package:flutter/material.dart'; 
import 'package:njangi/screens/dashboard_screen.dart';
import 'package:njangi/screens/notifications_screen.dart';
import 'package:njangi/screens/profile_screen.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
int pageIndex = 0;
  
  final pages = [
    const DashBoardScreen(),
    const NotificationsScreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return  LayoutBuilder(
      builder: (context, box){
        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.all(box.maxHeight * .025),
              child: pages[pageIndex],
            )), 
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
            // IconButton(
            //   enableFeedback: false,
            //   onPressed: () {
            //     setState(() {
            //       pageIndex = 1;
            //     });
            //   },
            //   icon: pageIndex == 1
            //       ? const Icon(
            //           Icons.work_rounded,
            //           color: Colors.white,
            //           size: 35,
            //         )
            //       : const Icon(
            //           Icons.work_outline_outlined,
            //           color: Colors.white,
            //           size: 35,
            //         ),
            // ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 1;
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