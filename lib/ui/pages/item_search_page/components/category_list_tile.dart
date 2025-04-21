import '../../../../utils/tools/importer.dart';
import '../category_page.dart';

class CategoryListTile extends StatelessWidget {
  final int position;
  final CategoryItemModel category;

  const CategoryListTile({
    super.key,
    required this.position,
    required this.category
  });

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (_) => CategoryPage(position: position)),
        );
      },
      child: Container(
        padding: EdgeInsets.only(top: 20, bottom: 22, left: 20, right: 20),
        width: 146,
        height: 177,
        decoration: BoxDecoration(
          color: AppColors.c70B458,
          borderRadius: BorderRadius.circular(33),
          boxShadow: [
            BoxShadow(
              color: Color(0x40000000),
              offset: Offset(0, 4),
              blurRadius: 4,
              spreadRadius: 0,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              category.title,
              style: TextStyle(
                color: AppColors.ffffff,
                fontSize: 20,
                fontWeight: FontWeight.w400,
                fontFamily: AppFonts.seoulNamsan,
              ),
            ),
            Image.asset(category.image, width: 97.39, height: 97.39),
          ],
        ),
      ),
    );
  }
}
