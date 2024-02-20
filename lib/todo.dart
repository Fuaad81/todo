// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_types_as_parameter_names

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:todo/add.dart';
import 'package:todo/rename.dart';

class Todo extends StatefulWidget {
  const Todo({super.key});

  @override
  State<Todo> createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  List lis = ["Task 1", "Task 2", "Task 3", "Task 4", "Task 5", "Task 6"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.white),
        title: Padding(
          padding: const EdgeInsets.only(left: 100),
          child: Text(
            'Feb 2024',
            style: TextStyle(color: Colors.white, fontSize: 17),
          ),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 25),
                child: Text(
                  'M',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 45),
                child: Text(
                  'T',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 45),
                child: Text(
                  'W',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 45),
                child: Text(
                  'T',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 45),
                child: Text(
                  'F',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 45),
                child: Text(
                  'S',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 45),
                child: Text(
                  'S',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 25),
                child: Text(
                  '1',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 50),
                child: Text(
                  '2',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 50),
                child: Text(
                  '3',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 50),
                child: Text(
                  '4',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 40),
                child: Text(
                  '5',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 40),
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.blue),
                  child: Center(
                    child: Text(
                      '6',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 35),
                child: Text(
                  '7',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 25),
                child: Text(
                  'Saturday,6 February',
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: lis.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                  child: Container(
                    width: 100,
                    height: 80,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            lis[index],style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(left: 190),
                            child: IconButton(
                                onPressed: () {
                                  Navigator.push(
                                    context, MaterialPageRoute(
                                      builder: (context) => Rename(name:lis[index]),));
                                },
                                icon: Icon(Icons.edit_square))),
                        Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    lis.removeAt(index);
                                    Fluttertoast.showToast(msg: 'item deleted');
                                    
                                  });
                                },
                                icon: Icon(Icons.delete))),
                      ],
                    ),
                  ),
                );
              },
              
            ),),
          FloatingActionButton(
            backgroundColor: Colors.blue,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Add(),
                  ));
            },
            child: Icon(
              Icons.add,
              color: Colors.white,
              size: 25,),
          )
        ],
      ),
    );
  }
}
