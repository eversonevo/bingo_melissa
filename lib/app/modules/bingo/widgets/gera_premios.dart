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
         child: Obx(() => 
           Container(
             margin: const EdgeInsets.fromLTRB(8, 4, 4, 0),
             color: controller.listColor[_index],
             width: Get.width * 0.20,
             height: Get.height * 0.04,
             child: Center(
               child: Text(
                 'PRÊMIO ${_index+1}'
               ),
             ),
           ),
         ),
       );
  }
}