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
                 Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     IconButton(
                        onPressed: (){
                          Navigator.pop(context);
                        }, 
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                          size: 24,
                        )
                        ),],
                 ),
                Center(
                  child: CircleAvatar(
                    radius: box.maxHeight * .065,
                    child: const Icon(
                      Icons.add_a_photo,
                      size: 28,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Center(child: Text('Tiku Gaelle',
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
                  height: box.maxHeight * .4,
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