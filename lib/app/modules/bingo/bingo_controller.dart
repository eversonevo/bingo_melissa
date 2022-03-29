import 'dart:math';

import 'package:bingo_melissa/app/models/bingo.dart';
import 'package:get/get.dart';

class BingoController extends GetxController {
  RxString tela = "0".obs;
  RxInt numSorteado = 99.obs;
  RxInt itemCount = 75.obs;
  RxList<int> listaEscolhida = <int>[].obs;
  RxList<Bingo> listaBingo = <Bingo>[].obs;

  @override
  void onInit() {
      super.onInit();
      criaNumber();

  }

  void draw() {}

  void criaNumber(){
    listaBingo = RxList<Bingo>.generate(75, (i) {
    return Bingo(index: i+1,selected: false);
  });
  }

  void drawNumber() {
    int num = Random().nextInt(75);
    if (num == 0) {
      drawNumber();
    }
    tela.value = num.toString();
    listaBingo.forEach((b) {
      if (b.index == num){
        if (!listaBingo[num-1].selected) {
          listaBingo[num-1] = Bingo(index: num,selected: true);
        } else{
          drawNumber();
        }
      }
    
    });      
   
  }
}


