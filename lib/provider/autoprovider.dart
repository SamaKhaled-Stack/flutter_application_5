


import 'package:flutter/material.dart';
import 'package:flutter_application_5/models/user_model.dart';
import 'package:flutter_application_5/serves/servesuser.dart';

class Autoprovider extends ChangeNotifier{

 static Auto? auto;


   Future<bool>login({
      required String email,
         required String password,
  }) async{
    final  response= await Servesuser.login(email: email, password: password);
    auto=response;

    return response.stutes;
  }

   Future<bool>signup ({
      required String name,
  required String email,
  required String phone,
  required String password,
   }) async{
     final response=await Servesuser.signup(name: name, email: email, phone: phone, password: password);

     auto=response;
     return response.stutes;
   }




}