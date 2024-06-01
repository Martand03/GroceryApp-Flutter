import 'package:flutter/material.dart';

import 'home_page.dart';

class IntroPage extends StatelessWidget{
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        children: [
          // logo
          Padding(
              padding: const EdgeInsets.only(left: 80, right: 80, top: 140, bottom: 40),
              child: Image.asset('lib/images/avocado.png')
          ),
          const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                "We deliver groceries at your doorstep",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,


                ),
              )
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 30),
            child: Text(
              "Fresh Items Daily",
              style: TextStyle(
                fontSize: 25,
                color: Colors.grey,
              ),
            ),
          ),
          GestureDetector(
            onTap: ()=> Navigator.pushReplacement(context, MaterialPageRoute(
                builder:(context){
                  return const HomePage();
              })),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.all(20.0),
              child: const Text(
                "Get Started",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
