import 'package:app_estados/bloc/user/user_bloc.dart';
import 'package:app_estados/models/User.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
              onPressed: (){
                BlocProvider.of<UserBloc>(context).add(ActivateUser(User(name: 'Flutter',age: 20,professions: [])));

              },
              child: Text('Establecer Usuario',style: TextStyle(color: Colors.white),),
              color: Colors.blue,
              ),
            MaterialButton(
              onPressed: ()=> BlocProvider.of<UserBloc>(context).add(ChangeUserAge(30)) ,
              child: Text('Cambiar Edad',style: TextStyle(color: Colors.white),),
              color: Colors.blue,
              ),
            MaterialButton(
              onPressed: (){
                BlocProvider.of<UserBloc>(context).add(AddProfession('Dart'));
              },
              child: Text('Añadir Profesion',style: TextStyle(color: Colors.white),),
              color: Colors.blue,
              ),

        ],)
      ),
    );
  }
}