import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('counter app')
      ),
      body: Center(
        child: Text(
         "$count"
          
        ),
      
      ),
        floatingActionButton:FloatingActionButton(onPressed: (){
        count++;

        setState(() {
          
        }
        );
        child: Icon(Icons.add,
        color: Colors.black,);
        }
        )
    );
  }
}