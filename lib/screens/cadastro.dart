import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:trabalho_final_flutter/scr/model/empregado.dart';



class Cadastro extends StatelessWidget{
  Cadastro({super.key});
  static const String id = 'cadastro_screen';

  var idDocument = ' ';
  var nome = ' ';
  var dataDeNascimento = ' ';
  static const enabled = true;

  var db = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Person;
    if(args.documentId.isNotEmpty){
      idDocument = args.documentId;
      nome = args.name;
      dataDeNascimento = args.birthDate;
    }

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
                initialValue: nome,
                decoration: const InputDecoration(
                  label: Text("Digite o seu nome")
                ),
                onChanged: (value) => nome = value,
              ),
              TextFormField(
                initialValue: dataDeNascimento,
                decoration: const InputDecoration(
                    label: Text("Digite a sua data de nascimento")
                ),
                onChanged: (value) => dataDeNascimento = value,
              ),
              const SizedBox(height: 32),
              ElevatedButton(style: ElevatedButton.styleFrom(
                    minimumSize: Size(100, 36),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(1000)),
                    ),
                  ),
                  onPressed: () =>
                    salvaDados(context),
                    //Navigator.pop(context);
                  child: const Text('Salvar',
                  style: TextStyle(
                    fontSize: 12,
                  ),
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  salvaDados(BuildContext context) async {
    print('Teste');
    print(idDocument);
    var col = db.collection('recursos_humanos');
    if(idDocument != ' '){
      print("Entrei no if");
      var ref = col.doc(idDocument);
      await ref.update({
        "nome": nome,
        "data_de_aniversario": dataDeNascimento,
      }).then((value) => Navigator.pop(context));
    }else{
      print("Entrei no else");
      var ref = col.doc();
      await ref.set({
        "nome": nome,
        "data_de_aniversario": dataDeNascimento,
      }).then((value) => Navigator.pop(context));
    }

  }


}