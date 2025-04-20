import '../utils/tools/importer.dart';

class MainPageRepository {
  static final MainPageStateController mainPageStateController = MainPageStateController.instance;

  void selectPage(int index) {
    mainPageStateController.currentPageIndex.value = index;
    mainPageStateController.currentPageTitle.value = AppTexts.mainPagesTitles[index];
  }
}