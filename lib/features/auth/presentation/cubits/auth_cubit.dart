/*

Auth Cubit: State Management for Auth States

 */

import 'package:dev_talks/features/auth/domain/entities/app_user.dart';
import 'package:dev_talks/features/auth/domain/repos/auth_repo.dart';
import 'package:dev_talks/features/auth/presentation/cubits/auth_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthStates> {
  final AuthRepo authRepo;
  AppUser? _currentuser;
  AuthCubit({required this.authRepo}) : super(AuthInitial());
}
