import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:njangi/screens/home_screen.dart';
import 'package:njangi/screens/log_in_screen.dart';


  Future<void> signUp(String firstName, String lastName, String phoneNumber, String password, context) async{
   
    var response = await http.post( 
      Uri.parse('https://njangi-production.up.railway.app/users'),
      body: {
        "firstName": firstName,
        "lastName": lastName,
        "phoneNumber": phoneNumber,
        "password": password
      }
    );
    String user = response.body;
    //print(user);

    if(response.statusCode == 200){
       ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Authenticated')));
       
        Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const LogInScreen()));
                  
       }
    else {
       
    } 

  }

    Future<void> logIn(String phoneNumber, String password, context) async{
   
    var response = await http.post( 
      Uri.parse('https://njangi-production.up.railway.app/users/auth'),
      body: {
        "phoneNumber": phoneNumber,
        "password": password
      }
    );
    String user = response.body;
    print(user);

    if(response.statusCode == 201){
        Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const HomeScreen()));
                   
       }
    else {
       ScaffoldMessenger.of(context).showSnackBar(  const SnackBar(content: Text('Invalid input field')));
       
    } 

  }
  
