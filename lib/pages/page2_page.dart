import 'package:app_estados/models/User.dart';
import 'package:app_estados/services/userService.dart';
import 'package:flutter/material.dart';

class Page2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: StreamBuilder(
          stream: userService.userStream,
          builder: (BuildContext context, AsyncSnapshot<User?> snapshot) {
            return snapshot.hasData?Text('${snapshot.data?.name}'):Text('Page 2');
          },
        ),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(
            onPressed: () {
              final user = new User(age: 22, name: 'Fernando', professions: []);
              userService.loadUser(user);
            },
            child: Text(
              'Establecer Usuario',
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.blue,
          ),
          MaterialButton(
            onPressed: () {
              userService.changeAge(33);
            },
            child: Text(
              'Cambiar Edad',
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.blue,
          ),
          MaterialButton(
            onPressed: () => {},
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
