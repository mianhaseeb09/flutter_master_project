import 'package:flutter/material.dart';
import 'package:flutter_master_project/login_signup_screen/signup_screen.dart';
import 'package:flutter_master_project/widgets/buttons.dart';
import 'package:flutter_master_project/widgets/gridviews/gridviewcount.dart';
import 'package:flutter_master_project/widgets/listviews/listview.dart';
import 'package:flutter_master_project/widgets/listviews/listviewbuilder.dart';
import 'package:flutter_master_project/widgets/listviews/listviewseprated.dart';
import 'package:flutter_master_project/widgets/text_field.dart';

import 'login_signup_screen/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const GridViewScreen(),
    );
  }
}


