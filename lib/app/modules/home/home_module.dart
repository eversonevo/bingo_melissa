import 'package:bingo_melissa/app/UI/module.dart';
import 'package:bingo_melissa/app/modules/home/home_bindings.dart';
import 'package:bingo_melissa/app/modules/home/home_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class HomeModule implements Module {
  @override
  List<GetPage> routers = [
    GetPage(
        name: '/home', page: () => const HomePage(), binding: HomeBindings())
  ];
}
