

import 'package:app_estados/models/User.dart';

class _UserService{
  User? _user;

  User? get user => this._user; 
  bool get existUser =>(this._user != null)?true:false;

  void loadUser(User user){
    this._user = user;
  }
  void changeAge(int age){
    this._user?.age = age;
  }

}


final userService = new _UserService();