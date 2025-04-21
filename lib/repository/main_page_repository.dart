import '../utils/tools/importer.dart';

class MainPageRepository {
  static final MainPageStateController mainPageStateController = MainPageStateController.instance;

  void selectMainPagesPage(int index) {
    mainPageStateController.currentPageIndex.value = index;
  }
}