import '../utils/tools/importer.dart';

class MainPageStateController extends GetxController {
  static final MainPageStateController instance = MainPageStateController._();

  MainPageStateController._();

  final RxInt currentPageIndex = 0.obs;
}
