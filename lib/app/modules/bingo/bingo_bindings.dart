import 'package:get/get.dart';
import './bingo_controller.dart';

class BingoBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(BingoController());
    }
}