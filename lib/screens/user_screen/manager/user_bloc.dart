import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:mobile_app_task/screens/user_screen/data/user_model/UserModel.dart';

import '../data/remote_data_source.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRemoteDataSourceImp userRemoteDataSourceImp;

  UserBloc(this.userRemoteDataSourceImp) : super(UserLoadingState()) {
    on<UserEvent>((event, emit) async {
      print('I am loading');
      emit(UserLoadingState());
      try {
        final users = await userRemoteDataSourceImp.fetchUsers();
        emit(UserLoadedState(users: users));
      } catch (e) {
        emit(UserErrorState(errorMessage: e.toString()));
      }
    });
  }
}
