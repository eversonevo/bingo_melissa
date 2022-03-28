import 'dart:math';

import 'package:get/get.dart';

class BingoController extends GetxController {
  RxString tela = "".obs;
  RxInt numSorteado = 99.obs;
  RxInt itemCount = 75.obs;
  RxList<int> listaEscolhida = <int>[].obs;

  void draw() {}

  void drawNumber() {
    int num = Random().nextInt(75);
    if (!listaEscolhida.contains(num)) {
      listaEscolhida.add(num);
      numSorteado.value = num;
      print('num sorte' + numSorteado.value.toString());
      tela.value = num.toString();
      //update();
    } else {
      print('numero ja sorteado ' + num.toString());
      drawNumber();
    }
    print('Tamanho lista' + listaEscolhida.length.toString());
  }
}
