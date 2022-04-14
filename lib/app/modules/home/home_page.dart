import 'package:bingo_melissa/app/modules/home/widgets/create_row_bingo.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
      ),
      body: Container(
        width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
               mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CreateRowBingo(tipo: 'numeros'),
                ],
              ),              
              Row(
               mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CreateRowBingo(tipo: 'rodadas'),
                ],
              ),  
              Row(
               mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CreateRowBingo(tipo: 'premios'),
                ],
              ),            
              
              Center(child: TextButton(onPressed: controller.play, child: const Text('JOGAR'))),      
            ],
          ),
    ),);
  }
}
