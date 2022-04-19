import 'package:bingo_melissa/app/modules/bingo/bingo_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class GeraPremios extends GetView<BingoController> {

  GeraPremios({required int index, Key? key }) : _index = index, super(key: key);

  int _index;

   @override
   Widget build(BuildContext context) {
       return InkWell(
         onTap: (){
           controller.cliquePremio(_index);
         },
         child: Padding(
           padding: const EdgeInsets.all(2.0),
           child: Obx(() => 
             Container(
               color: controller.listColor[_index],
               width: 80,
               height: 20,
               child: Center(
                 child: Text(
                   'PRÊMIO ${_index+1}'
                 ),
               ),
             ),
           ),
         ),
       );
  }
}