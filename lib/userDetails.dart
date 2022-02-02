// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, prefer_typing_uninitialized_variables

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
                      width: 370,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InfoCard(
                            user: userData,
                            label: 'Name',
                            info: userData['name'],
                            labelIcon: Icon(
                              Icons.person,
                              color: Colors.blue[300],
                            ),
                          ),
                          InfoCard(
                            user: userData,
                            label: 'Email',
                            info: userData['email'],
                            labelIcon: Icon(
                              Icons.alternate_email,
                              color: Colors.green[300],
                            ),
                          ),
                          InfoCard(
                            user: userData,
                            label: 'Phone',
                            info: userData['phone'],
                            labelIcon: Icon(
                              Icons.phone,
                              color: Colors.orange[300],
                            ),
                          ),
                          InfoCard(
                            user: userData,
                            label: 'Website',
                            info: userData['website'],
                            labelIcon: Icon(
                              Icons.online_prediction,
                              color: Colors.pink[300],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Company Info',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                Card(
                  elevation: 2,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: SizedBox(
                      width: 370,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InfoCard(
                              user: userData,
                              label: 'Name',
                              info: userData['company']['name'],
                              labelIcon: Icon(
                                Icons.info,
                                color: Colors.blue[500],
                              )),
                          InfoCard(
                              user: userData,
                              label: '',
                              info: '${userData['company']['catchPhrase']}',
                              labelIcon: Icon(
                                Icons.format_quote,
                                color: Colors.green[500],
                              )),
                        ],
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

class InfoCard extends StatelessWidget {
  var user;
  var label;
  var info;
  var labelIcon;
  InfoCard({
    Key? key,
    this.user,
    this.label,
    this.info,
    this.labelIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.all(5),
      leading: CircleAvatar(
        backgroundColor: Colors.grey[50],
        child: labelIcon,
      ),
      title: Text(label),
      trailing: Text(info),
    );
  }
}
