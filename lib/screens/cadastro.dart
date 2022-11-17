import 'package:flutter/material.dart';

class Cadastro extends StatelessWidget{
  const Cadastro({super.key});
  static const String id = 'cadastro_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro"),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(50.0),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  label: Text("Digite o seu nome")
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}