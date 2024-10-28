import 'package:dev_talks/features/auth/domain/entities/app_user.dart';
import 'package:dev_talks/features/auth/presentation/cubits/auth_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  //cubits

  late final authCubit = context.read<AuthCubit>();

  //current user

  late AppUser? currentUser = authCubit.currentUser;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(currentUser!.email),
      ),
    );
  }
}
