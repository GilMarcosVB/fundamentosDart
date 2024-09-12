void main(List<String> args) {
  // * nullable (aceita null)
  // sem nada (padrão) (não aceita valores null)

// Tem que Inicializar a lista e os itens internos nao podem ser nulos 
  List<String> nome = [];

// Não precisa inicializar a Lista eo itens internos não podem ser nulos
List<String>? nomeNulos;
// nomeNulos = ["Fulano", null];

//tem que iniciaizar a lista e os itens internos podem ser nulos;
List<String?> nomesInternosAceitaNulos = ["Fulano" , null];

// Não precisa inicializara
List<String?>? nomesNulosInternosAceitaNulos = null;

/* ----------- Declaração por Inferência --------  */
var nomesinferencia = <String>[];

// Tem que inicializar a lista e os itens internos podem ser nulos;
final nomesInternosAceitaNulosInfernecia = <String?>["Fulano", null];

// Não precisa inicilizar a lista e os itens internos podem ser nulos
// não e possivel declarar por inferência 
// Var nomesnulosinternosaceitanulosinferencia = <string?>null;


}
