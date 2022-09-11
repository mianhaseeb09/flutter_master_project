import 'package:flutter/material.dart';

class listview extends StatelessWidget {
  const listview({Key? key}) : super(key: key);
  //ListView.builder()
  // The builder() constructor constructs a repeating list of widgets.
  // The constructor takes two main parameters:
  //
  // An itemCount for the number of repetitions for the widget to be constructed (not compulsory).
  // An itemBuilder for constructing the widget which will be generated ‘itemCount‘ times (compulsory).
  // If the itemCount is not specified,
  // infinite widgets will be constructed by default.
  // https://www.geeksforgeeks.org/listview-class-in-flutter/


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, position) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                position.toString(),
                style: const TextStyle(fontSize: 22.0),
              ),
            ),
          );
        },
      ),
    );
  }
}
