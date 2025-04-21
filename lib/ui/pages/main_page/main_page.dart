import '../../../utils/tools/importer.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});

  final MainPageRepository _mainPageRepository = MainPageRepository();
  static final MainPageStateController _mainPageStateController =
      MainPageStateController.instance;

  static final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.c4e2b8,
      body: MyPageView(
        pageController: _pageController,
        mainPageRepository: _mainPageRepository,
      ),
      bottomNavigationBar: Obx(
        () => MyBottomNavBar(
          pageController: _pageController,
          repository: _mainPageRepository,
          currentIndex: _mainPageStateController.currentPageIndex.value,
        ),
      ),
    );
  }
}
