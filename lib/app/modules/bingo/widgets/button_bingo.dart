import 'package:bingo_melissa/app/modules/bingo/bingo_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ButtonBingo extends GetView<BingoController> {
  ButtonBingo({required int index, required RxBool visible, Key? key})
      : _index = index,
        _visible = visible,
        super(key: key);

  int _index;
  RxBool _visible = false.obs;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Obx(() => Visibility(
              visible: controller.numSorteado.value == _index ? true : false,
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
              child: Center(child: Text(_index.toString())),
            ),
          ),
        ),
      ],
    );
  }
}
