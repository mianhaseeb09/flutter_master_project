import 'package:flutter/material.dart';

class TextFieldScreen extends StatelessWidget {
  const TextFieldScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20,top: 50),
        child: Column(
          children: [
            TextFormField(
              initialValue: 'Input text',
              decoration: const InputDecoration(
                labelText: 'Label text',
                errorText: 'Error message',
                border: OutlineInputBorder(),
                suffixIcon:  Icon(
                  Icons.error,
                ),
              ),
            ),
            const SizedBox(height: 20,),
            TextFormField(
              cursorColor: Colors.red,
              initialValue: 'Input text',
              maxLength: 20,
              decoration: const InputDecoration(
                icon: Icon(Icons.favorite),
                labelText: 'Label text',
                labelStyle: TextStyle(
                  color: Color(0xFF6200EE),
                ),
                helperText: 'Helper text',
                suffixIcon: Icon(
                  Icons.check_circle,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF6200EE)),
                ),
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              padding: const EdgeInsets.fromLTRB(10,2,10,2),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.red)
              ),
              child: const TextField(

                decoration:  InputDecoration(
                  border: InputBorder.none,
                  labelText: "First Name",
                ),

              ),
            )
          ],
        ),
      ),
    ) ;


  }
}
