import 'dart:math';

import 'package:bingo_melissa/app/models/bingo.dart';
import 'package:get/get.dart';

class BingoController extends GetxController {
  RxString tela = "0".obs;
  RxInt numSorteado = 99.obs;
  RxInt itemCount = 75.obs;
  RxList<int> listaEscolhida = <int>[].obs;
  RxList<Bingo> listBingo = <Bingo>[].obs;
  RxInt numeros = 0.obs;
  RxInt rodadas = 0.obs;
  RxInt premios = 0.obs;
  RxInt iniciaRodada = 1.obs;

  @override
  void onInit() {
      super.onInit();
      var data = Get.arguments;
      itemCount = data[0];
      rodadas = data[1];
      premios = data[2];
      print(premios);
      criaNumber();

  }

  void validaRodadas(){
    if (iniciaRodada.value < rodadas.value){
      iniciaRodada+=1;
      criaNumber();
    }
    
  }

  void draw() {}

  void criaNumber(){
    listBingo = RxList<Bingo>.generate(itemCount.value, (i) {
    return Bingo(index: i+1,selected: false);
  });
  }

  void drawNumber() {
    int num = Random().nextInt(itemCount.value);
    if (num == 0) {
      drawNumber();
    }
    tela.value = num.toString();
    listBingo.forEach((b) {
      if (b.index == num){
        if (!listBingo[num-1].selected) {
          listBingo[num-1] = Bingo(index: num,selected: true);
        } else{
          drawNumber();
        }
      }
    
    });      
   
  }
}


