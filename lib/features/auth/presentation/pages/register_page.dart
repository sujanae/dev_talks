import 'package:flutter/widgets.dart';
import 'package:dev_talks/features/auth/presentation/components/my_button.dart';
import 'package:dev_talks/features/auth/presentation/components/my_text_field.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final namecontroller = TextEditingController();
  final emailcontroller = TextEditingController();
  final pwcontroller = TextEditingController();
  final confirmPwcontroller = TextEditingController();
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
                'Lets Create an Acount For You! ',
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
              Text("Not a member? Register now",
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.primary))
            ]),
          ),
        ),
      ),
    );
  }
}
