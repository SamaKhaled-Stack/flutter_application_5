import 'package:flutter/material.dart';

class Customtow extends StatelessWidget {
   String label;
   IconData prefiex;
   IconData sufiex;
   TextEditingController controller;
   bool obcure;
 //  bool isNumber;

   Customtow({super.key, required this.controller,required this.prefiex,required this.sufiex,required this.label, this.obcure=false,});

  @override
  Widget build(BuildContext context) {
    return TextFormField(

  controller :controller,
    obscureText: obcure,
    // keyboardType: isNumber ,
    decoration: InputDecoration(
        labelText: label,
          prefixIcon: Icon(prefiex),
          suffixIcon: Icon(sufiex),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
    ),
  
         validator: (value) {
           if (value ==null || value.isEmpty){
            return "pless fill data";
           } else if (label =="Name"&& value.length < 3){
            return "must be  at lest 3 charchters";
           } else if (label =="Email"&& !value.contains("@gmail.com")){
            return "must be enter @gmail.com";
           } else if (label =="Password" &&value.length<8){
            return "must be at lest 8";
          } else if (label =="Phone"&&value.length !=11){
           return " must be at lest 11";
          
         

         }
         }


    );
  }
}