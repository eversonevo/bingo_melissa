import 'package:bingo_melissa/app/modules/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class CreateRowBingo extends GetView<HomeController> {

  CreateRowBingo({ required String tipo, Key? key }) : _tipo = tipo,  super(key: key);

  String _tipo;

   @override
   Widget build(BuildContext context) {
       if (_tipo == 'numeros'){
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
             Column(
               children: [
                 InkWell(child: Icon(Icons.arrow_drop_up),onTap: (){
                   controller.cliqueNumeros('acima');
                 },),
                 InkWell(child: Icon(Icons.arrow_drop_down), onTap: (){
                   controller.cliqueNumeros('abaixo');
                 },),
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
}