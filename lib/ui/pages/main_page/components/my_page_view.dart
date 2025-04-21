import '../../../../utils/tools/importer.dart';

class MyPageView extends StatelessWidget {
  final PageController pageController;
  final MainPageRepository mainPageRepository;
  const MyPageView({super.key, required this.pageController, required this.mainPageRepository});

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      onPageChanged: (index) {
        mainPageRepository.selectMainPagesPage(index);
      },
      children: [
        ItemSearchPage(),
        BinLocatorPage(),
        BarcodeScannerPage(),
        FaqPage(),
      ],
    );
  }
}
