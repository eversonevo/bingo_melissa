import 'package:bingo_melissa/app/modules/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class CreateRowBingo extends GetView<HomeController> {

  CreateRowBingo({ required String tipo, Key? key }) : _tipo = tipo,  super(key: key);

  String _tipo;

   @override
   Widget build(BuildContext context) {
       /*if (_tipo == 'numeros'){
         return Container(
         width: Get.width * 0.9,
         height: 50,
         color: Colors.grey,
         child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
           children: [
             Text('Números de: 01'),
             SizedBox(width: 8,),
             Obx(() => Text('Até: '+controller.numeros.toString())),
             Stack(
               children: [
                 Positioned(
                   right: 0.5,
                   top: 0.01,
                   child: InkWell(child: Icon(Icons.arrow_drop_up),onTap: (){
                     controller.cliqueNumeros('acima');
                   },),
                 ),
                 Positioned(
                   child: InkWell(child: Icon(Icons.arrow_drop_down), onTap: (){
                     controller.cliqueNumeros('abaixo');
                   },),
                 ),
               ],
             ),
           ],
         ),
       );      
       }else if (_tipo == 'rodadas'){
         return Container(
         width: Get.width * 0.9,
         height: 50,
         color: Colors.yellow,
         child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
           children: [
             Obx(() => Text('Quantidade de Rodadas: '+controller.rodadas.toString())),
             Column(
               children: [
                 InkWell(child: Icon(Icons.arrow_drop_up),onTap: (){
                   controller.cliqueRodadas('acima');
                 },),
                 InkWell(child: Icon(Icons.arrow_drop_down), onTap: (){
                   controller.cliqueRodadas('abaixo');
                 },),
               ],
             ),
           ],
         ),
       );      
       }else{
         return Container(
         width: Get.width * 0.9,
         height: 50,
         color: Colors.green,
         child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
           children: [
             Obx(() => Text('Prêmios por Rodada: '+controller.premios.toString())),
             Column(
               children: [
                 InkWell(child: Icon(Icons.arrow_drop_up),onTap: (){
                   controller.cliquePremios('acima');
                 },),
                 InkWell(child: Icon(Icons.arrow_drop_down), onTap: (){
                   controller.cliquePremios('abaixo');
                 },),
               ],
             ),
           ],
         ),
       );      
       }
       return Container();
  }
}*/
if (_tipo == 'numeros'){
  return Container(
    decoration: BoxDecoration(
    color: Colors.blueGrey[200],
    borderRadius: BorderRadius.circular(10)),
    width: Get.width * 0.7,
    height: Get.height * 0.1,
    
    child: Stack(
      alignment: Alignment.centerLeft,
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Números de: 01   Até ', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
        ),
        Positioned(
          left: Get.width * 0.50,
          child: Obx(() => Text(controller.numeros.toString(), style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.red)))),
        Positioned(
          top: 5,
          right: 5,          
          child: InkWell(
            onTap: (){
                controller.cliqueNumeros('acima');
            },
            child: const Icon(Icons.arrow_drop_up,size: 40,),
          ),),
        Positioned(
          bottom: 5,
          right: 5,
          child: InkWell(
            onTap: (){
                controller.cliqueNumeros('abaixo');
            },
            child: const Icon(Icons.arrow_drop_down,size: 40,),
          ),),
      ],
    ),
    );    
} else if (_tipo == 'rodadas'){
    return Container(
    decoration: BoxDecoration(
    color: Colors.blueGrey[200],
    borderRadius: BorderRadius.circular(10)),
    width: Get.width * 0.7,
    height: Get.height * 0.1,
    
    child: Stack(
      alignment: Alignment.centerLeft,
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Quantidade de Rodadas: ', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
        ),
        Positioned(
          left: Get.width * 0.50,
          child: Obx(() => Text(controller.rodadas.toString(), style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.red)))),
        Positioned(
          top: 5,
          right: 5,          
          child: InkWell(
            onTap: (){
                controller.cliqueRodadas('acima');
            },
            child: const Icon(Icons.arrow_drop_up,size: 40,),
          ),),
        Positioned(
          bottom: 5,
          right: 5,
          child: InkWell(
            onTap: (){
                controller.cliqueRodadas('abaixo');
            },
            child: const Icon(Icons.arrow_drop_down,size: 40,),
          ),),
      ],
    ),
    );
}else{
  return Container(
    decoration: BoxDecoration(
    color: Colors.blueGrey[200],
    borderRadius: BorderRadius.circular(10)),
    width: Get.width * 0.7,
    height: Get.height * 0.1,
    
    child: Stack(
      alignment: Alignment.centerLeft,
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Quantidade de Prêmios: ', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
        ),
        Positioned(
          left: Get.width * 0.50,
          child: Obx(() => Text(controller.premios.toString(), style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.red)))),
        Positioned(
          top: 5,
          right: 5,          
          child: InkWell(
            onTap: (){
                controller.cliquePremios('acima');
            },
            child: const Icon(Icons.arrow_drop_up,size: 40,),
          ),),
        Positioned(
          bottom: 5,
          right: 5,
          child: InkWell(
            onTap: (){
                controller.cliquePremios('abaixo');
            },
            child: const Icon(Icons.arrow_drop_down,size: 40,),
          ),),
      ],
    ),
    );
}
return Container();
  
   }
}