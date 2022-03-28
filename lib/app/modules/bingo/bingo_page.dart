import 'package:bingo_melissa/app/modules/bingo/widgets/button_bingo.dart';
import 'package:bingo_melissa/app/modules/bingo/widgets/button_bingo_visible.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './bingo_controller.dart';

class BingoPage extends GetView<BingoController> {
  const BingoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BingoPage'),
      ),
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 30,
            child: Row(
              children: [
                Obx(() => Text(controller.tela.value)),
                const SizedBox(
                  width: 10,
                ),
                TextButton(
                    onPressed: controller.drawNumber,
                    child: const Text("SORTEAR")),
              ],
            ),
          ),
          SizedBox(
            height: 550,
            child: GridView.builder(
                itemCount: 75,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 55,
                ),
                itemBuilder: (_, index) {
                  print(
                      'numsorteado' + controller.numSorteado.value.toString());
                  if (controller.numSorteado.value == index) {
                    RxBool teste = true.obs;
                    return Obx(() => ButtonBingo(index: index, visible: teste));
                  } else {
                    RxBool teste1 = false.obs;
                    return Obx(
                        () => ButtonBingo(index: index, visible: teste1));
                  }
                }),
          )
        ],
      ),
    );
  }
}
