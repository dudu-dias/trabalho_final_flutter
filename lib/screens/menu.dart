import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'components/rounded_button.dart';
import 'login.dart';


class Menu extends StatelessWidget {
  static const String id = 'menu_screen';

  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Menu inicial',
                style: GoogleFonts.pacifico(
                  fontSize: 26,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                width: double.infinity,
                height: 32,
              ),

              const SizedBox(height: 16),
              RoundedButton(
                text: 'Sair',
                onPressed: () {
                  FirebaseAuth.instance.signOut();
                  Navigator.pushReplacementNamed(
                    context,
                    Login.id,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
