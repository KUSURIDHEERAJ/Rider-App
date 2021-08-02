import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  //const MainPage({ Key ? key }) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: MaterialButton(
          onPressed: () {
            DatabaseReference dbref =
                FirebaseDatabase.instance.reference().child('Test');
            dbref.set('Isconnected');
          },
          height: 50,
          minWidth: 300,
          color: Colors.green,
          child: Text('Test Connection'),
        ),
      ),
    );
  }
}
