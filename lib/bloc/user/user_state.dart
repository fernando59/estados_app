part of 'user_bloc.dart';


@immutable
abstract class UserState{

  final bool existUser;
  final User? user;

  UserState({this.existUser =false, this.user});

}


class UsertInitialState extends UserState{

    UsertInitialState() : super(existUser: false, user: null);

}

class UserSetState extends UserState{
  
    UserSetState({User? user}) : super(existUser: true, user: user);
  
}



