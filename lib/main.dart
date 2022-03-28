import 'package:bingo_melissa/app/modules/bingo/bingo_module.dart';
import 'package:bingo_melissa/app/modules/home/home_bindings.dart';
import 'package:bingo_melissa/app/modules/home/home_module.dart';
import 'package:bingo_melissa/app/modules/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: HomeBindings(),
      title: 'Flutter Demo',
      getPages: [...HomeModule().routers, ...BingoModule().routers],
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
