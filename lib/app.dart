import 'package:dev_talks/features/auth/data/firebase_auth_repo.dart';
import 'package:dev_talks/features/auth/presentation/cubits/auth_cubit.dart';
import 'package:dev_talks/features/auth/presentation/cubits/auth_states.dart';
import 'package:dev_talks/features/auth/presentation/pages/auth_page.dart';
import 'package:dev_talks/features/posts/presentation/pages/home_page.dart';
import 'package:dev_talks/themes/light_mode.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  final authRepo = FirebaseAuthRepo();
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(authRepo: authRepo)..checkAuth(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: lightMode,
        home: BlocConsumer<AuthCubit, AuthStates>(
          builder: (context, authState) {
            print(authState);
            if (authState is UnAuthenticated) {
              return const AuthPage();
            }
            if (authState is Authenticated) {
              return const HomePage();
            } else {
              return const Scaffold(
                body: Center(child: CircularProgressIndicator()),
              );
            }
          },
          listener: (context, state) {
            if (state is AuthError) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.message),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
