import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {

  RxInt numeros = 75.obs;
  RxInt premios = 3.obs;
  RxInt rodadas = 10.obs;

  @override
  void onInit() {
    super.onInit();
  }

  void cliqueNumeros(String clique){
    if (clique == 'acima'){
      if (numeros < 100)
        numeros+=1;
       print('acima');
    }else if (clique == 'abaixo'){
      if (numeros > 1)
        numeros-=1;
      print('abaixo');
    }else{
      print('nada');
    }
  }

  void cliqueRodadas(String clique){
    if (clique == 'acima'){
       if (rodadas < 30)
          rodadas+=1;
       print('acima');
    }else if (clique == 'abaixo'){
      if (rodadas > 1)
        rodadas-=1;
      print('abaixo');
    }else{
      print('nada');
    }
  }

  void cliquePremios(String clique){
    if (clique == 'acima'){
      if (premios < 20)
        premios+=1;
       print('acima');
    }else if (clique == 'abaixo'){
      if (premios > 1)
        premios-=1;
      print('abaixo');
    }else{
      print('nada');
    }
  }

  void play() {
    Get.toNamed('/bingo',arguments: [
      numeros,
      rodadas,
      premios,
    ]);
  }
}
