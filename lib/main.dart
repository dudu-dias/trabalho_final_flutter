import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:trabalho_final_flutter/screens/login.dart';
import 'package:trabalho_final_flutter/screens/menu.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: Login.id,
      routes: {
        Login.id: (context) => Login(),
        Menu.id: (context) => Menu(),
      },
    );
  }
}


