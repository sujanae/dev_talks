import 'package:dev_talks/features/auth/presentation/cubits/auth_cubit.dart';
import 'package:flutter/widgets.dart';
import 'package:dev_talks/features/auth/presentation/components/my_button.dart';
import 'package:dev_talks/features/auth/presentation/components/my_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterPage extends StatefulWidget {
  final void Function() togglePages;
  const RegisterPage({super.key, required this.togglePages});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final namecontroller = TextEditingController();
  final emailcontroller = TextEditingController();
  final pwcontroller = TextEditingController();
  final confirmPwcontroller = TextEditingController();

  void register() {
    final String name = namecontroller.text;
    final String email = emailcontroller.text;
    final String pw = pwcontroller.text;
    final String confirmPw = confirmPwcontroller.text;

    final authCubit = context.read<AuthCubit>();
    if (name.isNotEmpty &&
        email.isNotEmpty &&
        pw.isNotEmpty &&
        confirmPw.isNotEmpty) {
      if (pw == confirmPw) {
        authCubit.register(name, email, pw);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Passwords do not match'),
        ));
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Please enter all fields'),
      ));
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    namecontroller.dispose();
    emailcontroller.dispose();
    pwcontroller.dispose();
    confirmPwcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Center(
          child: SafeArea(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Icon(
                Icons.person_2,
                size: 80,
                color: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(height: 50),
              //welcome back msg
              Text(
                'Lets Create an Acount For You! ',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.primary),
              ),
              const SizedBox(height: 50),
              MyTextField(
                controller: namecontroller,
                obscureText: false,
                hintText: 'Name',
              ),
              const SizedBox(height: 20),

              //email text feild
              MyTextField(
                controller: emailcontroller,
                obscureText: false,
                hintText: 'Email',
              ),
              const SizedBox(height: 20),
              //pw text feild
              MyTextField(
                controller: pwcontroller,
                obscureText: true,
                hintText: 'Password',
              ),
              const SizedBox(height: 20),
              MyTextField(
                controller: confirmPwcontroller,
                obscureText: true,
                hintText: 'Confirm Password',
              ),
              const SizedBox(height: 20),

              //login btn
              MyButton(onTap: register, text: 'Register'),
              const SizedBox(height: 20),

              //not member? register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already a member? ",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary)),
                  GestureDetector(
                    onTap: widget.togglePages,
                    child: Text(" Login now",
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.inversePrimary,
                            fontWeight: FontWeight.bold)),
                  ),
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}
