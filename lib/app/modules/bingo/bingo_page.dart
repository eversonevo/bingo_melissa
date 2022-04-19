import 'package:bingo_melissa/app/modules/bingo/widgets/button_bingo.dart';
import 'package:bingo_melissa/app/modules/bingo/widgets/gera_premios.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './bingo_controller.dart';

class BingoPage extends GetView<BingoController> {
  const BingoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('BingoPage'),
      ),
      body: Column(
        children: [
          Text('Total de rodadas: '+controller.rodadas.toString()),
          Container(
            height: 50,
            child: Row(
              children: [
                Text('Rodada: '),
                Obx (() => Text(controller.iniciaRodada.value.toString())),
                TextButton(onPressed: controller.validaRodadas, child: Text('PRÓXIMA RODADA')),
              ],
            ),
          ),
          SizedBox(height: 8,),
          Row(
            children: [
              Text('Prêmio: '),
                Obx (() => Text(controller.premios.value.toString())),
                SizedBox(
                  width: Get.width * 0.9,
                  height: 30,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: controller.premios.value,
                    itemBuilder: (_, index){
                      return Expanded(child: GeraPremios(index: index));
                    }),
                ),
            ],
          ),
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
                itemCount: controller.itemCount.value,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 55,
                ),
                itemBuilder: (_, index) {
                  return ButtonBingo(index: index,);
                  }
                ),
          )
        ],
      ),
    );
  }
}
