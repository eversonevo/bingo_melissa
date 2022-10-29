import 'dart:math';

import 'package:bingo_melissa/app/models/bingo.dart';
import 'package:bingo_melissa/app/models/premio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BingoController extends GetxController {
  RxString tela = "0".obs;
  RxString telaB = "0".obs;
  RxInt numSorteado = 99.obs;
  RxInt itemCount = 75.obs;
  RxList<int> listaEscolhida = <int>[].obs;
  RxList<Bingo> listBingo = <Bingo>[].obs;
  RxList<Bingo> listBingoB = <Bingo>[].obs;
  RxList<Premio> listPremio = <Premio>[].obs;
  RxInt numeros = 0.obs;
  RxInt rodadas = 0.obs;
  RxInt premios = 0.obs;
  RxInt iniciaRodada = 1.obs;
  RxList<Color> listColor = <Color>[].obs;

  @override
  void onInit() {
      super.onInit();
      carregaBingoB();
      var data = Get.arguments;
      itemCount = data[0];
      rodadas = data[1];
      premios = data[2];
      print(premios);
      criaNumber();
      criaPremio();
      carregaCores();

  }

  // nova programação
  void carregaBingoB(){
    for (int i=0;i < itemCount.value;i++){
      listBingoB.add(Bingo(index: i+1,selected: false));
    }
    print('list '+listBingoB.length.toString());
  }

  void marcaListBingoB(){
    for (int i=0;i <= numSorteado.value;i++){
      if (i != 0){
         if (i == numSorteado.value){
          listBingoB[i-1] = Bingo(index: numSorteado.value,selected: true);
         } 
      }
      //listBingoB[i] = Bingo(index: numSorteado.value,selected: true);
     }
    if (listBingoB[numSorteado.value-1].selected){
      print('list '+listBingoB[numSorteado.value-1].index.toString());
    }else{
      print('erro');
    }
  }

  void limpaListBingoB(){
    listBingoB.clear();
    carregaBingoB();
    print('lista b'+listBingoB.length.toString());
  }






  // ******************************

  void validaRodadas(){
    if (iniciaRodada.value < rodadas.value){
      iniciaRodada+=1;
      //limpaNumber();
      listBingo.clear();      
      tela.value = "0";
      criaNumber();
    }
    
  }

  void draw() {}

  void criaNumber(){
    listBingo = RxList<Bingo>.generate(itemCount.value, (i) {
    return Bingo(index: i+1,selected: false);
  });
  }

  void criaPremio(){
    listPremio = RxList<Premio>.generate(premios.value, (i) {
    return Premio(index: i,selected: false,color: Colors.green);
  });
  }

  void drawNumber() {
    int num = Random().nextInt(itemCount.value);
    if (num == 0) {
      drawNumber();
    }
    numSorteado.value = num;
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

    void carregaCores(){
      
      int i = 0;
      while(i < premios.value){
        listColor.add(Colors.green);
        i+=1;
      }

    }

    void cliquePremio(int index){
      if (index+1 < premios.value){
        if ((index == 0) || (listColor[index-1] == Colors.red)){
          validaClique(index);
        }
      } else {
        if (listColor[index-1] == Colors.green){
          return;
        } else {
          for (int i = 0;i < premios.value;i++) {
            listColor[i] = Colors.green;
        }
          validaRodadas();
        }
        
      }
      
    }

    void validaClique(int index){
      if (listColor[index] == Colors.green){
           listColor[index] = Colors.red;
        } else {
          listColor[index] = Colors.green;
        }
    }

    void limpar(){
      tela.value = '';
      limpaNumber();
    }
    

    
    void limpaNumber(){
      int i = 0;
      while(i < listBingo.length){
        listBingo[i] = Bingo(index: i,selected: false);
        i+=1;
      }
    }
   
  }

  


