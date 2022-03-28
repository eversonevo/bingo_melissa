import 'package:bingo_melissa/app/UI/module.dart';
import 'package:bingo_melissa/app/modules/bingo/bingo_bindings.dart';
import 'package:bingo_melissa/app/modules/bingo/bingo_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class BingoModule implements Module {
  @override
  List<GetPage> routers = [
    GetPage(
        name: '/bingo', page: () => const BingoPage(), binding: BingoBindings())
  ];
}
