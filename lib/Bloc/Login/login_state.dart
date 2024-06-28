part of 'login_bloc.dart';

@immutable
sealed class LoginState {}

final class LoginInitial extends LoginState {}
class Loginblocloading extends LoginState {}
class Loginblocloaded extends LoginState {}
class Loginblocerror extends LoginState {}
