import 'package:bingo_melissa/app/modules/home/widgets/create_row_bingo.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(      
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
              const SizedBox(height: 8,),
              Row(
               mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CreateRowBingo(tipo: 'rodadas'),
                ],
              ),  
              const SizedBox(height: 8,),
              Row(
               mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CreateRowBingo(tipo: 'premios'),
                ],
              ),            
              
              Center(child: TextButton.icon(onPressed: controller.play, icon: const Icon(Icons.play_arrow,size: 30,),label: const Text('JOGAR', style: TextStyle(fontSize: 22),))),      
              Center(child: TextButton.icon(onPressed: controller.logout, icon: const Icon(Icons.close,size: 30,),label: const Text('SAIR', style: TextStyle(fontSize: 22),))),      
            ],
          ),
    ),);
  }
}
