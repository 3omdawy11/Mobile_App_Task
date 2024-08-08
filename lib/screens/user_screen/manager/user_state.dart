part of 'user_bloc.dart';

@immutable
abstract class UserState extends Equatable{}

class UserLoadingState extends UserState {
  @override
  List<Object?> get props => [];
}

class UserLoadedState extends UserState {
  final List<UserModel> users;
  UserLoadedState({required this.users});

  @override
  List<Object?> get props => [users];

}

class UserErrorState extends UserState {
  final String errorMessage;
  UserErrorState({required this.errorMessage});

  @override
  List<Object?> get props => [errorMessage];

}
