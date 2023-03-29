import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:njangi/screens/dashboard_screen.dart';
import 'package:njangi/screens/home_screen.dart';
import 'package:njangi/screens/log_in_screen.dart';

late String token;
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
       ScaffoldMessenger.of(context).showSnackBar(  const SnackBar(content: Text('Invalid input fields. Try again')));
       
    } 

  }

late Map<String, dynamic> data;
    Future<Map<String, dynamic>> logIn(String phoneNumber, String password, context) async{
   
    var response = await http.post( 
      Uri.parse('https://njangi-production.up.railway.app/users/auth'),
       body: {
        "phoneNumber": phoneNumber,
        "password": password
      }
    );
    var user = json.decode(response.body);
    print(user);
  data = user['data'];
//token = (data['user']['accessToken']);

    if(response.statusCode == 201){
        Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => DashBoardScreen(data: data)));
                   
       }
    else {
       ScaffoldMessenger.of(context).showSnackBar(  const SnackBar(content: Text('Invalid input fields. Try again')));
       
    } 
  return data;
  }
 
 
 late Map<String, dynamic> njangiData;
 Future<Map<String, dynamic>> createNjangi(String njangiName, String njangiAmount, String njangiDuration, context) async{
   
    var response = await http.post( 
      Uri.parse('https://njangi-production.up.railway.app/njangis'),
    //   headers: <String, String>{
    // //'Content-Type': 'application/json',
    // //'Authorization': 'Bearer $token'
    //   },
       body: {
        "name": njangiName,
        "amount": njangiAmount,
        "duration": njangiDuration
      }
    );
    var user = json.decode(response.body);
    print(user);
  njangiData = user['data'];
//print(data['user']['phoneNumber']);

    if(response.statusCode == 201){
        Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => DashBoardScreen(data: njangiData)));
                   
       }
    else {
       ScaffoldMessenger.of(context).showSnackBar(  const SnackBar(content: Text('Invalid input fields. Try again')));
       
    } 
  return njangiData;
  }
  
