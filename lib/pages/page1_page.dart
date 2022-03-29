import 'package:app_estados/models/User.dart';
import 'package:app_estados/services/userService.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class Page1Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final userService = Provider.of<UserService>(context);

    return Scaffold(
      appBar: AppBar(title: Text('Page 1'),
      actions: [
        IconButton(
          icon: Icon(Icons.remove_circle),
          onPressed: (){
            userService.removeUser();
          },
        )
      ],
      ),
      body:userService.existUser? _InformationUser(userService.user):_EmptyUser(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.publish),
        onPressed: ()=> Navigator.pushNamed(context, 'page2')
      ),

    );
  }
}

class _EmptyUser extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('No hay usuario'),
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
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('General',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            Divider(),
            ListTile(title: Text('Nombre : ${user?.name} '),),
            ListTile(title: Text('Edad : ${user?.age} '),),
      
            Text('Profesiones',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            Divider(),
            ...user!.professions.map((profession) => ListTile(title: Text(profession),),).toList()
           
            
            
          ],
        ),
      ),

    );
  }
}