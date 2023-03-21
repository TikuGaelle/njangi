import 'package:flutter/material.dart';
import 'package:njangi/screens/dashboard_screen.dart';

class SignUpScreen extends StatefulWidget {
    const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
TextEditingController nameController = TextEditingController();
TextEditingController phoneController = TextEditingController();
TextEditingController pswdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, box){
      return Scaffold (
        body: SafeArea(
          child: Padding(
            padding:   EdgeInsets.all(box.maxHeight * .025),
            child: ListView(
              children:   [
                const Text('Join Us',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                ),),
                SizedBox(
                  height: box.maxHeight * .1,
                ),
                SizedBox(
                  height: box.maxHeight * .025,
                ),
                 TextFormField(
                  controller: phoneController,
                  decoration:const InputDecoration( 
                    hintText: 'Enter Phone Number',

                  ),
                  
                ),
                SizedBox(
                  height: box.maxHeight * .025,
                ),
                 TextFormField(
                  controller: pswdController,
                  decoration:const InputDecoration( 
                    hintText: 'Enter Password',

                  ),
                  
                ),
                SizedBox(
                  height: box.maxHeight * .5,
                ),

                ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(  
                        borderRadius: BorderRadius.circular(box.maxHeight * .035)
                      )
                    )
                  ),
                  onPressed: ( ){
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const DashBoardScreen()));
                  }, 
                  child: const Text('Sign In'),
                  )
              ],
            ),
          )),
      );
  });
  }
}