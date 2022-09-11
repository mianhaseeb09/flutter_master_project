import 'package:flutter/material.dart';
class GridViewScreen extends StatelessWidget {
  const GridViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: GridView.count(
          crossAxisCount: 3,
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 8.0,
          children: List.generate(choices.length, (index) {
            return Center(
              child: SelectCard(choice: choices[index]),
            );
          }
          )
      )
    );
  }

  SelectCard({required Choice choice}) {
    return Card(
        color: Colors.orange,
        child: Center(child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(child: Icon(choice.icon, size:50.0, )),
              Text(choice.title, ),
            ]
        ),
        )
    );
  }
}
class Choice {
  const Choice({required this.title, required this.icon});
  final String title;
  final IconData icon;
}
const List<Choice> choices =  <Choice>[
   Choice(title: 'Home', icon: Icons.home),
   Choice(title: 'Contact', icon: Icons.contacts),
   Choice(title: 'Map', icon: Icons.map),
   Choice(title: 'Phone', icon: Icons.phone),
   Choice(title: 'Camera', icon: Icons.camera_alt),
   Choice(title: 'Setting', icon: Icons.settings),
   Choice(title: 'Album', icon: Icons.photo_album),
   Choice(title: 'WiFi', icon: Icons.wifi),
];