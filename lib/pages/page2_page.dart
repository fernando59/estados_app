import 'package:app_estados/models/User.dart';
import 'package:app_estados/services/userService.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Page2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userService = Provider.of<UserService>(context);
    return Scaffold(
      appBar: AppBar(
        title: userService.existUser?Text('${userService.user?.name}'):Text('Page 2'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(
            onPressed: () {
              final newUser = new User(
                  name: 'Fernando',
                  age: 22,
                  professions: ['Programador', 'Diseñador']);
              userService.user = newUser;
            },
            child: Text(
              'Establecer Usuario',
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.blue,
          ),
          MaterialButton(
            onPressed: () {
              userService.changeAge(20);
            },
            child: Text(
              'Cambiar Edad',
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.blue,
          ),
          MaterialButton(
            onPressed: () {
              userService.addProfession();
            },
            child: Text(
              'Añadir Profesion',
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.blue,
          ),
        ],
      )),
    );
  }
}
