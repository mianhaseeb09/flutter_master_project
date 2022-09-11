import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 50),
        child: Center(
          child: Column(
            children: [
              TextButton(
                onPressed: () {},
                child: Container(
                  color: Colors.green,
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: const Text(
                    'Text Button',
                    style: TextStyle(color: Colors.white, fontSize: 13.0),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              OutlinedButton(
                onPressed: () {
                  // Respond to button press
                },
                child: const Text("OUTLINED BUTTON"),
              ),
              const SizedBox(
                height: 30,
              ),
              OutlinedButton.icon(
                onPressed: () {
                  // Respond to button press
                },
                icon: const Icon(Icons.add, size: 18),
                label: const Text("OUTLINED BUTTON"),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  // Respond to button press
                },
                child: const Text('CONTAINED BUTTON'),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton.icon(
                onPressed: () {
                  // Respond to button press
                },
                icon: const Icon(Icons.add, size: 18),
                label: const Text("CONTAINED BUTTON"),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 1 / 10,
                width: MediaQuery.of(context).size.width * 3 / 5,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.yellow,
                        Colors.green,
                      ]),
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Text(""),
                    const Text(
                      "Send Money",
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    Container(
                        padding: const EdgeInsets.all(8.0),
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                        child: const Icon(
                          Icons.arrow_right_alt_outlined,
                          size: 25.0,
                          color: Colors.green,
                        ))
                  ],
                ),
              ),
              const SizedBox(height: 30,),
              ElevatedButton(
                onPressed: () {
                  print("Doing everything");
                }, //This prop for beautiful expressions
                child: Text(
                    "Beautiful Elevated Button"), // This child can be everything. I want to choose a beautiful Text Widget
                style: ElevatedButton.styleFrom(
                  textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  minimumSize: Size(200, 100), //change size of this beautiful button
                  // We can change style of this beautiful elevated button thanks to style prop
                  primary: Colors.red, // we can set primary color
                  onPrimary: Colors.white, // change color of child prop
                  onSurface: Colors.blue, // surface color
                  shadowColor: Colors
                      .grey, //shadow prop is a very nice prop for every button or card widgets.
                  elevation: 5, // we can set elevation of this beautiful button
                  side: BorderSide(
                      color: Colors.redAccent.shade400, //change border color
                      width: 2, //change border width
                      style: BorderStyle
                          .solid), // change border side of this beautiful button
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        30), //change border radius of this beautiful button thanks to BorderRadius.circular function
                  ),
                  tapTargetSize: MaterialTapTargetSize.padded,
                ),
              ),
              const SizedBox(height: 30,),
            ],
          ),
        ),
      ),
    );
  }
}
