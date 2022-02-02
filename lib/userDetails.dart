// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  var userData;
  DetailPage({Key? key, this.userData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white70,
        title: Text(
          'User Details',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: ListView(
          children: [
            Column(
              children: [
                SizedBox(height: 20),
                Card(
                  elevation: 2,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: SizedBox(
                      width: 360,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
