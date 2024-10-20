/*Auth states */

import 'package:dev_talks/features/auth/domain/entities/app_user.dart';

abstract class AuthStates {}

//inital
class AuthInitial extends AuthStates {}

//loading..
class AuthLoading extends AuthStates {}

//authenticated
class Authenticated extends AuthStates {
  final AppUser user;

  Authenticated(this.user);
}

//unauthenticated
class UnAuthenticated extends AuthStates {}

//errors..
class AuthError extends AuthStates {
  final String message;

  AuthError(this.message);
}
