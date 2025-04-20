import '../../../../utils/tools/importer.dart';

class MyBottomNavBarItem extends StatelessWidget {
  final MainPageRepository repository;
  final String imageSrc;
  final int position;
  final int currentIndex;
  final PageController pageController;
  final double height;
  final double width;

  const MyBottomNavBarItem({
    super.key,
    required this.repository,
    required this.imageSrc,
    required this.position,
    required this.currentIndex,
    required this.pageController,
    required this.height,
    required this.width
  });

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      onTap: () {
        repository.selectPage(position);
        pageController.animateToPage(
          position,
          duration: Duration(milliseconds: 500),
          curve: Curves.linearToEaseOut,
        );
      },
      child: SvgPicture.asset(
        imageSrc,
        width: width,
        height: height,
        color: currentIndex == position ? AppColors.ffffff : null,
      ),
    );
  }
}
