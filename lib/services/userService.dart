

import 'dart:async';

import 'package:app_estados/models/User.dart';

class _UserService{
  User? _user;

  StreamController<User?> _userStreamController =new StreamController<User?>.broadcast();

  User? get user => this._user; 
  bool get existUser =>(this._user != null)?true:false;

  void loadUser(User user){
    this._user = user;
    this._userStreamController.add(user);
  }

  void changeAge(int age){
    this._user?.age = age;
    this._userStreamController.add(this._user);
  }
  //STREAM
  dispose(){
    this._userStreamController.close();
  }

  Stream<User?> get userStream => _userStreamController.stream;



}


final userService = new _UserService();