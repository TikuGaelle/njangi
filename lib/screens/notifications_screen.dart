import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, box){
    return   Scaffold(
      body: SafeArea(
        child: Padding(
          padding:   EdgeInsets.all(box.maxHeight * .015),
          child: ListView(
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
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                  const Text('Notifications',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w600
                  ),),
                ],
              ),
          ]),
        ),
      ),
    );
      });
  }
}