import 'dart:convert';

class NewNjangi{
 NewNjangi({
  required this.njangiName,
  required this.amount,
  required this.timeline,
});

  final String njangiName;
  final String amount;
   int? maxMembers;
   final String timeline;

  //  void createNewNjangi(){
    
   //}
}

//Class for new user

//variable sused when class is not used
NewUser newUserFromeJson(String str) => NewUser.fromJson(json.decode(str));
String newUserToJson(NewUser user) => json.encode(user.toJson());

class NewUser{
  NewUser(
    {
     required this.firstName,
      required this.lastName,
      required this.password,
      required this.phoneNumber
    }
  );

  String firstName;
  String lastName;
  String phoneNumber;
  String password;

  factory NewUser.fromJson(Map<String, dynamic> json) => NewUser(
    firstName: json['firstName'], 
    lastName: json['lastName'], 
    password: json['password'], 
    phoneNumber: json['phoneNumber']);

    Map<String, dynamic> toJson() => {
      "firstName": firstName,
      "lastName": lastName,
      "password": password,
      "phoneNumber": phoneNumber,
    };


}