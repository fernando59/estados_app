import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:app_estados/models/User.dart';

part 'user_event.dart';
part 'user_state.dart';


class UserBloc extends Bloc<UserEvent,UserState>{

  UserBloc() : super(UsertInitialState()){
    on<ActivateUser>((event, emit){
      emit(UserSetState(user: event.user));
    });
  }


}
