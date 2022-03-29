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
              visible: controller.listaBingo[index].selected,
              child: Container(
                width: 50,
                height: 50,
                color: Colors.yellow,
              ),
            )),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 40,
              height: 40,
              color: Colors.blue,
              child: Center(child: Text(controller.listaBingo[index].index.toString())),
            ),
          ),
        ),
      ],
    );
  }
}
