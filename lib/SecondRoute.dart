import 'package:flutter/material.dart';

class SecondRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Route'),
      ),
      body: ElevatedButton(
        onPressed: (){
          // Navigate to the first route
        },
        child:Text('Go back to the First Route')
      ),
    );
  }
}