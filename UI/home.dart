import 'package:flutter/material.dart';

MyApp() {
  var text = Text(
    'LW APP',
    textDirection: TextDirection.ltr,
    textAlign: TextAlign.center,
  );
  var x = text;

  var MyEmailIcon = Icon(Icons.email);
  var MyCalIcon = Icon(Icons.calendar_today);
  mypress() {
    print("Something Clicked on Email");
  }

  mypress2() {
    print("Something Clicked on Cal Icon");
  }

  var url =
      'https://raw.githubusercontent.com/1398abhisingh911/day4-appd/master/download.jpg';
  var MyImage = Image.network(
    url,
    width: double.infinity,
    height: double.infinity,
  );

  var MyEmailButton = IconButton(icon: MyEmailIcon, onPressed: mypress);
  var MyCalButton = IconButton(icon: MyCalIcon, onPressed: mypress2);

  var myappbar = AppBar(
    title: x,
    backgroundColor: Colors.lightBlue,
    /*leading: myicon,*/
    actions: <Widget>[
      MyEmailButton,
      MyCalButton,
    ],
  );
  var myhome = Scaffold(
    appBar: myappbar,
    /*body: Center(child: Text('Intern Company')),*/
    body: MyImage,
    backgroundColor: Colors.grey.shade500,
  );
  var design = MaterialApp(
    home: myhome,
    debugShowCheckedModeBanner: false,
  );
  return design;
}
