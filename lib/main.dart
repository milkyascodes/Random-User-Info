// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var users = [];

  Future getUserData() async {
    http.Response response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

    var data = jsonDecode(response.body);

    setState(() {
      users = data;
    });
  }

  @override
  void initState() {
    getUserData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white70,
        title: Text(
          'Random User Info',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: ListView(
          children: users.map((user) {
            return Card(
              child: ListTile(
                contentPadding: EdgeInsets.all(8),
                leading: CircleAvatar(
                  child: Text(
                      user['name'].toString().toUpperCase().substring(0, 1)),
                ),
                title: Text(user['name']),
                trailing: IconButton(
                  icon: Icon(Icons.more_horiz),
                  onPressed: () {
                    print(user['name']);
                  },
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
