import 'package:app_estados/models/User.dart';
import 'package:app_estados/services/userService.dart';
import 'package:flutter/material.dart';
class Page1Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page 1'),
      ),
      body: StreamBuilder(
        stream: userService.userStream,
        builder: (BuildContext context, AsyncSnapshot<User?> snapshot) {
          return snapshot.hasData?_InformationUser(snapshot.data):_EmptyWidget();
        },
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.publish),
        onPressed: ()=> Navigator.pushNamed(context, 'page2')
      ),

    );
  }
}

class _EmptyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('User not exist'),
      ),
    );
  }
}

class _InformationUser extends StatelessWidget {
  
  final User? user;
  const _InformationUser(this.user);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('General',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          ListTile(title: Text('Nombre : ${user?.name}'),),
          ListTile(title: Text('Edad : ${user?.age}'),),

          Text('Profesiones',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          ListTile(title: Text('Profesion 1: '),),
          ListTile(title: Text('Profesion 2 : '),),
          ListTile(title: Text('Profesion 3 : '),),
          
          
        ],
      ),

    );
  }
}