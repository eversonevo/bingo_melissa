import 'package:bingo_melissa/app/modules/bingo/widgets/button_bingo.dart';
import 'package:bingo_melissa/app/modules/bingo/widgets/gera_premios.dart';
import 'package:flutter/services.dart';
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
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: Get.width * 0.95,
              height: Get.height * 0.05,
              color: Colors.yellow,
              margin: const EdgeInsets.fromLTRB(8, 8, 8, 0),
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('NÚMERO DE RODADAS '),
                    Text(controller.rodadas.toString()),
                  ],
                ),
                ),              
            ),
            //Text('Total de rodadas: '+controller.rodadas.toString()),
            Container(
              margin: const EdgeInsets.fromLTRB(8, 8, 8, 0),
              width: Get.width * 0.40,
              height: Get.height * 0.05,
              color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text('Rodada: '),
                    Obx (() => Text(controller.iniciaRodada.value.toString())),
                    //TextButton(onPressed: controller.validaRodadas, child: Text('PRÓXIMA RODADA')),
                  ],
                ),
              ),
            ),
            SizedBox(height: 8,),
            Row(
              children: [
                //Text('Prêmio: '),
                  //Obx (() => Text(controller.premios.value.toString())),
                  SizedBox(
                    width: Get.width,
                    height: Get.height * 0.04,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: controller.premios.value,
                      itemBuilder: (_, index){
                        return GeraPremios(index: index);
                      }),
                  ),
              ],
            ),
            SizedBox(
              width: Get.width * 0.95,
              height: Get.height * 0.12,
              child: Row(
                children: [
                  Obx(() => Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(controller.tela.value, style:TextStyle(fontSize: 30, fontWeight: FontWeight.w600),))),
                  const SizedBox(
                    width: 10,
                  ),
                  TextButton.icon(
                      icon: const Icon(Icons.add_box_rounded),
                      onPressed: (){
                        controller.drawNumber();
                        controller.marcaListBingoB();
                      },
                      label: const Text("SORTEAR")),
                      const SizedBox(
                    width: 10,
                  ),
                  TextButton.icon(
                      icon: const Icon(Icons.cancel),
                      onPressed: (){
                        controller.limpaListBingoB();
                        controller.limpar();

                      },
                      label: const Text("LIMPAR")),
                ],
              ),
            ),
            SizedBox(
              height: Get.height * 0.63,
              child: GridView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: controller.itemCount.value,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 55,
                  ),
                  itemBuilder: (_, index) {
                    return ButtonBingo(index: index,);
                    }
                  ),
            ),
            TextButton.icon(onPressed: () => Get.back(), icon: const Icon(Icons.cancel, color: Colors.red,), label: const Text('CANCELAR', style: TextStyle(color: Colors.red),)),
          ],
        ),
      ),
    );
  }
}
