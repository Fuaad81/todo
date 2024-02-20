// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:todo/todo.dart';

class Rename extends StatefulWidget {
  String name;
   Rename({super.key, required this.name});

  @override
  State<Rename> createState() => _RenameState();
}

class _RenameState extends State<Rename> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 380,
                  height: 100,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30, top: 50),
                    child: TextFormField(
                      initialValue: widget.name,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          labelText: 'rename a text',
                          labelStyle: TextStyle(color: Colors.white)),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 250, top: 30),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Todo(),
                          ));
                      Fluttertoast.showToast(
                          msg: 'cancelled',
                          backgroundColor: Colors.red,
                          toastLength: Toast.LENGTH_LONG,
                          timeInSecForIosWeb: 3);
                    },
                    child: Text(
                      'cancel',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 30),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Todo(),
                          ));
                          Fluttertoast.showToast(
                          msg: 'renamed',
                          backgroundColor: Colors.red,
                          toastLength: Toast.LENGTH_LONG,
                          timeInSecForIosWeb: 1);
                    
                    },
                    child: Text(
                      'Rename',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
    );
  }
}