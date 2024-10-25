import 'Quadrado.dart';
import 'Triangulo.dart';
import 'Circulo.dart';
import 'Retangulo.dart';
import 'forma.dart';

void main(List<String> args) {
   List<Forma> formas = [];
   formas.add (Quadrado(10));
   formas.add (Retangulo(3, 6));
   formas.add (Circulo(3));
   formas.add (Triangulo(7, 3));
  //  print("Area do Quadrado:${quadrado.calculaArea()}");
  formas.forEach((forma)=>forma.imprimeForma);
}