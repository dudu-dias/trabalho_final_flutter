class Person  {
  String _documentId = '';
  String name = '';
  bool active = true;
  String birthDate = '';

  Person(this._documentId,this.name,this.active,this.birthDate);

  Person.map(dynamic obj) {
    _documentId = obj['id'];
    name = obj['nome'];
    active = obj['ativo'];
    birthDate = obj['data_de_aniversário'];
  }

  String get id => _documentId;
  String get nome => name;
  bool get ativo => active;
  String get data_de_aniversario => birthDate;

  Map<String,dynamic> toMap() {
    var map = <String, dynamic>{};
    map['id'] = _documentId;
    map['nome'] = name;
    map['ativo'] = active;
    map['data_de_aniversario'] = birthDate;
    return map;
  }

  Person.fromMap(Map<String,dynamic>map, String id){
    _documentId = id;
    name = map['nome'];
    active = map['ativo'];
    birthDate = map['data_de_aniversario'];
  }



  }

