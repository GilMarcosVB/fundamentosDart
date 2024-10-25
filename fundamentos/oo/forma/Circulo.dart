import 'dart:math';

import 'forma.dart';
import 'enum.dart';

class Circulo extends Forma{
  double raio = 0;

  Circulo (this.raio): super(tpForma.Circulo);
@override
  double calculaArea(){
    return pi * pow(raio, 2);
  }
  }
