import 'package:revolution_recycling_app/ui/pages/main_page/components/my_bottom_nav_bar_Item.dart';

import '../../../../utils/tools/importer.dart';

class MyBottomNavBar extends StatelessWidget {
  final MainPageRepository repository;
  final int currentIndex;
  final PageController pageController;

  const MyBottomNavBar({
    super.key,
    required this.repository,
    required this.currentIndex,
    required this.pageController,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColors.c8DD0DD,
      height: 92,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          MyBottomNavBarItem(
            repository: repository,
            imageSrc: BottomTabBarIcons.inactiveItemSearch,
            position: 0,
            currentIndex: currentIndex,
            pageController: pageController,
            height: 44,
            width: 44,
          ),

          MyBottomNavBarItem(
            repository: repository,
            imageSrc: BottomTabBarIcons.inactiveBinLocator,
            position: 1,
            currentIndex: currentIndex,
            pageController: pageController,
            height: 46.58,
            width: 34.88,
          ),

          MyBottomNavBarItem(
            repository: repository,
            imageSrc: BottomTabBarIcons.inactiveBarcodeScanner,
            position: 2,
            currentIndex: currentIndex,
            pageController: pageController,
            height: 44,
            width: 44,
          ),

          MyBottomNavBarItem(
            repository: repository,
            imageSrc: BottomTabBarIcons.inactiveFaq,
            position: 3,
            currentIndex: currentIndex,
            pageController: pageController,
            height: 49,
            width: 49,
          ),
        ],
      ),
    );
  }
}

// Theme(
// data: Theme.of(context).copyWith(canvasColor: AppColors.c8DD0DD),
// child: BottomNavigationBar(
// elevation: 0,
// backgroundColor: AppColors.c8DD0DD,
// items: [
// BottomNavigationBarItem(          ///////////////
// label: '',
// icon: SvgPicture.asset(
// BottomTabBarIcons.inactiveItemSearch,
// width: 44,
// height: 44,
// ),
// ),
// BottomNavigationBarItem( //////////////////
// label: '',
// icon: SvgPicture.asset(
// BottomTabBarIcons.inactiveBinLocator,
// width: 34.88,
// height: 43.58,
// ),
// ),
// BottomNavigationBarItem(
// label: '',
// icon: SvgPicture.asset(
// BottomTabBarIcons.inactiveBarcodeScanner,
// width: 44,
// height: 44,
// ),
// ),
// BottomNavigationBarItem(
// label: '',
// icon: SvgPicture.asset(
// BottomTabBarIcons.inactiveFaq,
// width: 49,
// height: 49,
// ),
// ),
// ],
// ),
// )
