import 'package:dev_talks/features/auth/presentation/components/my_button.dart';
import 'package:dev_talks/features/auth/presentation/components/my_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatefulWidget {
  final void Function() onTap;
  const LoginPage({
    super.key,
    required this.onTap,
  });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //controller
  final emailcontroller = TextEditingController();
  final pwcontroller = TextEditingController();
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
                Icons.lock_open_rounded,
                size: 80,
                color: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(height: 50),
              //welcome back msg
              Text(
                'Welcome Back ',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.primary),
              ),
              const SizedBox(height: 50),

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

              //login btn
              MyButton(onTap: () {}, text: 'login'),
              const SizedBox(height: 20),

              //not member? register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Not a member? ",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary)),
                  GestureDetector(
                    onTap: () {},
                    child: Text(" Register now",
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
