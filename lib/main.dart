import 'package:dev_talks/features/auth/presentation/pages/auht_page.dart';
import 'package:dev_talks/features/auth/presentation/pages/login_page.dart';
import 'package:dev_talks/firebase_options.dart';
import 'package:dev_talks/themes/light_mode.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const AuthPage(),
      theme: lightMode,
    );
  }
}
