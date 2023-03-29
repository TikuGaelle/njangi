import 'package:flutter/material.dart';
import 'package:njangi/components/post_requests.dart';
import 'package:njangi/components/new_njangi.dart';

class SignUpScreen extends StatefulWidget {
    const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
TextEditingController firstNameController = TextEditingController();
TextEditingController lastNameController = TextEditingController();
TextEditingController phoneController = TextEditingController();
TextEditingController pswdController = TextEditingController();

late NewUser _newUser;

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
                  height: box.maxHeight * .075,
                ),
                TextFormField(
                  controller: firstNameController,
                  decoration:const InputDecoration( 
                    hintText: 'First name',

                  ),
                  
                ),
                SizedBox(
                  height: box.maxHeight * .025,
                ),
                TextFormField(
                  controller: lastNameController,
                  decoration:const InputDecoration( 
                    hintText: 'Last name',

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
                  height: box.maxHeight * .4,
                ),

                ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(  
                        borderRadius: BorderRadius.circular(box.maxHeight * .035)
                      )
                    )
                  ),
                  onPressed: ( )async {
                     await signUp(firstNameController.text, lastNameController.text, phoneController.text, pswdController.text, context);
                  setState(() {

                  });
                  
                  }, 
                  child: const Text('Sign Up'),
                  )
              ],
            ),
          )),
      );
  });
  }
} 