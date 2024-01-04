part of 'auth_bloc.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class AuthSuccess extends AuthState {
  final String uid; //userModel in big applications instead of uid
  AuthSuccess({required this.uid});
}

final class AuthFailure extends AuthState {
  final String error;
  AuthFailure(this.error);
}
