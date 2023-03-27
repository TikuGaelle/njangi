import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   LayoutBuilder(
      builder: (context, box){
        return Scaffold(
          body: SafeArea(
            child:  ListView(  
              children: [
                Center(
                  child: CircleAvatar(
                    radius: box.maxHeight * .075,
                    child: const FlutterLogo(),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Center(child: Text('User name',
                style: TextStyle(  
                  fontSize: box.maxHeight * .025
                ),)),

                SizedBox(
                  height: box.maxHeight * .025,
                ),
                const ListTile(
                  leading: Icon(Icons.history,
                  color: Colors.black,),
                  title: Text('History',
                  style: TextStyle(
                    fontWeight: FontWeight.w600
                  ),),
                ),
                SizedBox(
                  height: box.maxHeight * .015,
                ),
                const ListTile(
                  leading: Icon(Icons.history,
                  color: Colors.black,),
                  title: Text('History',
                  style: TextStyle(
                    fontWeight: FontWeight.w600
                  ),),
                ),
                SizedBox(
                  height: box.maxHeight * .015,
                ),
                const ListTile(
                  leading: Icon(Icons.language,
                  color: Colors.black,),
                  title: Text('Language',
                  style: TextStyle(
                    fontWeight: FontWeight.w600
                  ),),
                ),
                SizedBox(
                  height: box.maxHeight * .015,
                ),
                const ListTile(
                  leading: Icon(Icons.logout_sharp,
                  color: Colors.black,),
                  title: Text('Log out',
                  style: TextStyle(
                    fontWeight: FontWeight.w600
                  ),),
                ),
                SizedBox(
                  height: box.maxHeight * .35,
                ),
                const Center(child: Text('Version 1.0'))
              ],
            )
            ),
        );
      },
    );
  }
}