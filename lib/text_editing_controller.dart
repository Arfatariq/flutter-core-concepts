import 'package:flutter/material.dart';

class NameClass extends StatefulWidget {
  const NameClass({super.key});

  @override
  State<NameClass> createState() => _NameClassState();
}

class _NameClassState extends State<NameClass> {
  TextEditingController nameController = TextEditingController();
  String name = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Display Name'),
      ),
      body: Center(
        child: Column(
          children: [
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: TextField(
  controller: nameController,
  decoration: InputDecoration(
    hintText: "Enter your name",
    labelText: "Name",
    prefixIcon: Icon(Icons.person),
    suffixIcon: Icon(Icons.edit),
    border: OutlineInputBorder(),
  ),
)
           ),
           
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: ElevatedButton(onPressed: (){
              setState(() {
                name = nameController.text;
              });
             
             },
             child: Text('show name'),
             
             ),
           ),
           Text(name)
          ],
        ),
      ),
    );
  }
}