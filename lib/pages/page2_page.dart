import 'package:flutter/material.dart';

class Page2Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page 2'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: ()=>{},
              child: Text('Establecer Usuario',style: TextStyle(color: Colors.white),),
              color: Colors.blue,
              ),
            MaterialButton(
              onPressed: ()=>{},
              child: Text('Cambiar Edad',style: TextStyle(color: Colors.white),),
              color: Colors.blue,
              ),
            MaterialButton(
              onPressed: ()=>{},
              child: Text('Añadir Profesion',style: TextStyle(color: Colors.white),),
              color: Colors.blue,
              ),

        ],)
      ),
    );
  }
}