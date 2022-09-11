import 'package:flutter/material.dart';

class ListViewSeparatedScreen extends StatelessWidget {
  const ListViewSeparatedScreen({Key? key}) : super(key: key);

  //ListView.separated ()
  // The ListView.separated() constructor is used to generate a list of widgets,
  // but in addition, a separator widget can also be
  // generated to separate the widgets.
  // In short, these are two intertwined list of widgets:
  // the main list and the separator list.
  // Unlike the builder() constructor,
  // the itemCount parameter is compulsory here.


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView.separated(
        itemBuilder: (context, position) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'List Item $position',
              ),
            ),
          );
        },
        separatorBuilder: (context, position) {
          return Card(
            color: Colors.grey,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                'Separator $position',
                style: const TextStyle(color: Colors.white),
              ),
            ),
          );
        },
        itemCount: 20,
      ),
    );
  }


}
