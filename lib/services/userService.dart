import 'package:app_estados/models/User.dart';
import 'package:flutter/material.dart';

class UserService with ChangeNotifier{

  User? _user;

  User? get user => _user;
  bool get existUser => _user != null?true:false;



}