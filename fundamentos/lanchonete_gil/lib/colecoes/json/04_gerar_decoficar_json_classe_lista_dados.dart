import 'dart:convert';

class Usuario {
  String nome;
  int idade;
  bool eEstudante;

  Usuario({required this.nome, required this.idade, required this.eEstudante});

  // Método para converter um objeto Usuario em um mapa
  Map<String, dynamic> paraJson() {
    return {
      'nome': nome,
      'idade': idade,
      'eEstudante': eEstudante,
    };
  }

  // Método para criar um objeto Usuario a partir de um mapa
  factory Usuario.dejson(Map<String, dynamic> json) {
    return Usuario(
      nome: json['nome'],
      idade: json['idade'],
      eEstudante: json['eEstudante'],
    );
  }
}

void main() {
  // String JSON com único usuário
  String jsonString = '''{"nome": "Alice", "idade": 30, "eEstudante": false},
                        {"nome":"bob","idade":25,"eEstudante":true},
                        {"nome":"charlie","idade":28,"eEstudante":false}
  ''';

  // Converter a string JSON em um mapa
  List<dynamic> usuariosJson = jsonDecode(jsonString);

  // Criar um objeto Usuario a partir do mapa
  List<Usuario> usuarios =
      usuariosJson.map((usuarioJson) => Usuario.dejson(usuarioJson)).toList();

  // Exibir os detalhes do usuario
  for (var usuario in usuarios) {
    print('''Nome: ${usuario.nome},
Idade: ${usuario.idade},
Estudante: ${usuario.eEstudante}?''');
  }

  // Converter o objeto usuario de volta para o JSON
  String jsonSaida = jsonEncode(
    usuarios.map((usuario) => usuario.paraJson()).toList(),
  );
  print(jsonSaida);
}
