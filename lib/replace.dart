// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:todo/sample.dart';

class Replacemt extends StatefulWidget {
  const Replacemt({super.key});

  @override
  State<Replacemt> createState() => _ReplacemtState();
}

class _ReplacemtState extends State<Replacemt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: (){
          Navigator.pushReplacement(
            context, MaterialPageRoute(
              builder: (context) => Sample(),));
        },
        child: Text('click')),
      ),
    );
  }
}