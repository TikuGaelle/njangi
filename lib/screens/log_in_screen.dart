import 'package:flutter/material.dart';
import 'package:njangi/screens/sign_up_screen.dart';

class LogInScreen extends StatefulWidget {
    const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
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
                const Text('Log In',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                ),),
                SizedBox(
                  height: box.maxHeight * .1,
                ),
                TextFormField(
                  controller: nameController,
                  decoration:const InputDecoration( 
                    hintText: 'Enter name',

                  ),
                  
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
                  height: box.maxHeight * .45,
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
                      MaterialPageRoute(builder: (context) => const SignUpScreen()));
                  }, 
                  child: const Text('Log In'),
                  )
              ],
            ),
          )),
      );
  });
  }
}