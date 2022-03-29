import 'package:app_estados/models/User.dart';
import 'package:flutter/material.dart';

class UserService with ChangeNotifier {
  User? _user;

  User? get user => _user;
  bool get existUser => _user != null ? true : false;

  set user(User? user) {
    _user = user;
    notifyListeners();
  }

  void changeAge(int age) {
    _user?.age = age;
    notifyListeners();
  }

  void removeUser() {
    _user = null;
    notifyListeners();
  }
  void addProfession(){
    _user?.professions.add('Profession ${_user!.professions.length + 1}');
    notifyListeners();
  }
}
