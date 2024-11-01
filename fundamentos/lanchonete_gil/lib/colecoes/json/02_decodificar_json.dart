import 'dart:convert';

void main() {
  // String Json
  String jsonString = '{"nome":"Alice","idade":30,"eEstudante":false}';

// Converter a string JSOn em um mapa
  Map<String, dynamic> usuario = jsonDecode(jsonString);

  print(usuario['nome']); // alice
  print(usuario['idade']); // 30
  print('È estudante ${usuario['eEstudante'] ? 'Sim' : 'Não'}');
}
