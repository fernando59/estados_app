import 'package:app_estados/bloc/user/user_bloc.dart';
import 'package:app_estados/models/User.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Page1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 1'),
        actions: [
          IconButton(onPressed: (){
            BlocProvider.of<UserBloc>(context).add(DeleteUser());
          }, icon: Icon(Icons.delete_outline),)
        ],
      ),
      body: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          return state.existUser ? _InformationUser(user: state.user!,) : _EmptyUser();
        },
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.publish),
          onPressed: () => Navigator.pushNamed(context, 'page2')),
    );
  }
}

class _EmptyUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('No hay usuario activo'),
      ),
    );
  }
}

class _InformationUser extends StatelessWidget {
  final User user;

  const _InformationUser({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'General',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Divider(),
          ListTile(
            title: Text('Nombre : ${user.name} '),
          ),
          ListTile(
            title: Text('Edad : ${user.age}'),
          ),
          Text(
            'Profesiones',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Divider(),
          ...user.professions
              .map((profession) => ListTile(
                    title: Text('Profesion : ${profession}'),
                  ))
              .toList(),
        ],
      ),
    );
  }
}
