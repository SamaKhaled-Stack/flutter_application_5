

import 'package:flutter/material.dart';
import 'package:flutter_application_5/provider/autoprovider.dart';
import 'package:flutter_application_5/screnss/login.dart';

import 'package:flutter_application_5/widget/customtow.dart';
import 'package:provider/provider.dart';

class Signup extends StatelessWidget {
  final TextEditingController name=TextEditingController();
  final TextEditingController email=TextEditingController();
  final TextEditingController password=TextEditingController();
  final TextEditingController phone=TextEditingController();
  // GlobalKey<FormState> keyy=GlobalKey<FormState>();
  GlobalKey<FormState> keyy=GlobalKey();
  Signup({super.key});

  @override
  Widget build(BuildContext context) {
    final providerobject=context.read<Autoprovider>();
    return Scaffold(

     appBar: AppBar(
      title: Text("SignUp"),
      centerTitle: true,
      backgroundColor: Colors.blueAccent,
     ), 
     body: Form(   
      key: keyy, 
      child: Column(
        children: [
          const Text("Sign Up",style:  TextStyle(fontSize: 50,color: Colors.black),),
         
         Customtow(label: "Name",controller:name , prefiex: Icons.person, sufiex: Icons.person, ),SizedBox(height: 30,),
         Customtow(label: "Password",controller: password, prefiex: Icons.lock, sufiex: Icons.lock),SizedBox(height: 30,),// شيلت ال  obscure true 
         Customtow(label: "Phone",controller:phone , prefiex: Icons.phone, sufiex: Icons.phone, ),SizedBox(height: 30,),
         Customtow(label: "Email",controller:email , prefiex: Icons.email, sufiex: Icons.email, ),SizedBox(height: 30,),

            ElevatedButton(onPressed: () async{
              if (!keyy.currentState!.validate())  return;

              final data= await providerobject.signup(

                name: name.text,
                password: password.text,
                email: email.text,
                phone: phone.text,
              );
              // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text( data ?"Done": "Try again"),backgroundColor:data? Colors.green :Colors.deepOrange, ));
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text(providerobject.auto?.message ?? "Try again"),backgroundColor:data? Colors.green :Colors.deepOrange, ));
          
                if (data){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),));
                  
                }
                 
            }, child: Text("Sign Up",style: TextStyle(fontSize: 30,color: Colors.black),)),
            

           SizedBox(height: 50,),
           TextButton(onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context) => Login(),));
           }, child: Text("Alredy Have account")),


        ],
      
     ))
     


    );
  }
}
