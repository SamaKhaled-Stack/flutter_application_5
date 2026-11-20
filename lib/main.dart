import 'package:flutter/material.dart';
import 'package:flutter_application_5/provider/autoprovider.dart';
import 'package:flutter_application_5/screnss/signUp.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(

      create: (context) => Autoprovider(),

    
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
         
          colorScheme: .fromSeed(seedColor: Colors.deepPurple),
        ),
        home: Signup(),
      ),
    );
  }
}
