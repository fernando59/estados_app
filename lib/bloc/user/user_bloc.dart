import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:app_estados/models/User.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UsertInitialState()) {
    // EVENTS
    on<ActivateUser>((event, emit) => emit(UserSetState(user: event.user)));

    on<ChangeUserAge>((event, emit) {
      if (!state.existUser) return;
      emit(UserSetState(user: state.user!.copyWith(age: event.age)));
    });

    on<AddProfession>((event, emit) {
      if (!state.existUser) return;
      emit(UserSetState(
          user: state.user!.copyWith(
              professions: [...state.user!.professions, event.profession])));
    });
    on<DeleteUser>((event, emit) => emit(UsertInitialState()));
  }
}
