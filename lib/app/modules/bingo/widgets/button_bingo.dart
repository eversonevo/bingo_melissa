import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:bingo_melissa/app/modules/bingo/bingo_controller.dart';

class ButtonBingo extends GetView<BingoController> {

  int index;
  ButtonBingo({Key? key, 
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Obx(() => Visibility(
              visible: controller.listBingo[index].selected,
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                color: Colors.yellow,
                ),
                width: 50,
                height: 50,
              ),
            )),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                                            color: Colors.white,

                              ),

              width: 40,
              height: 40,
              child: Center(child: Text(controller.listBingo[index].index.toString())),
            ),
          ),
        ),
      ],
    );
  }
}
