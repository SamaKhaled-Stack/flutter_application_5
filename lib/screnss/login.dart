import 'package:flutter/material.dart';
import 'package:flutter_application_5/provider/autoprovider.dart';
import 'package:flutter_application_5/screnss/homepage.dart';
import 'package:flutter_application_5/widget/customtow.dart';
import 'package:provider/provider.dart';

class Login extends StatelessWidget {
  TextEditingController email=TextEditingController();
  TextEditingController password=TextEditingController();
  GlobalKey <FormState> keyy=GlobalKey();
Login({super.key});

  @override
  Widget build(BuildContext context) {
     final providerobject=context.read<Autoprovider>();
    return  Scaffold(
       appBar: AppBar(
        title: Text("Login"),
       ),
       body: Form(
        key: keyy,
        child: Column(children: [
          Text("Login",style: TextStyle(fontSize: 50,color: Colors.black),),
         Customtow(label: "Email",controller:email , prefiex: Icons.email, sufiex: Icons.email, ),SizedBox(height: 30,),
           
         Customtow(label: "Password",controller: password, prefiex: Icons.lock, sufiex: Icons.lock, obcure: true,),SizedBox(height: 30,),


         ElevatedButton(
            onPressed: () async {
    if (keyy.currentState!.validate()) return;

    final data = await providerobject.login(
      password: password.text,
      email: email.text,
    );

    // if (!context.mounted) return; 

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(providerobject.auth?.message ?? 'Please try again'),
        backgroundColor: data == true ? Colors.green : Colors.deepOrange,
      ),
    );

    if (data) {
      // Navigator.pushReplacement(
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Homepage()),
      );
    }
  },
  child: const Text(
    "Login",
    style: TextStyle(fontSize: 30, color: Colors.black),
  ),
),
                 
        ],)),











    );
  }
}
