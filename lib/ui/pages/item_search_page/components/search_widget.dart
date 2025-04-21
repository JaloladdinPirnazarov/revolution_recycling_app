import '../../../../utils/tools/importer.dart';

class SearchWidget extends StatelessWidget {
  SearchWidget({super.key});

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            height: 49,
            decoration: BoxDecoration(
              color: AppColors.ffffff,
              borderRadius: BorderRadius.circular(33),
              border: Border.all(color: AppColors.c70B458, width: 1),
            ),
            child: Center(
              child: TextField(
                controller: _controller,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: AppTexts.itemSearchExample.tr,
                  hintStyle: TextStyle(
                    color: AppColors.b5bdc2,
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                    fontFamily: AppFonts.seoulNamsan,
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 12),

        ZoomTapAnimation(
          onTap: () {},
          child: Container(
            height: 49,
            width: 49,
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
            child: Center(
              child: SvgPicture.asset(
                AppIcons.searchIcon,
                width: 28,
                height: 27,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
