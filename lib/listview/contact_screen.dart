import 'package:counter_app/listview/contact_viewmodel.dart';
import 'package:counter_app/listview/list_tile.dart';
import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
   ContactScreen({super.key});

  final ContactViewmodel viewModel = ContactViewmodel();
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title:  Text('Contacts List'),
      ),
      body: ListView.builder(
        itemCount:  viewModel.contacts.length,
        itemBuilder: (context,index){
          return ContactTile(
            contact: viewModel.contacts[index]
          );

        },
      ),
    );
  }
}