import '../../utils/tools/importer.dart';

class PageTitle extends StatelessWidget {
  final String title;
  const PageTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 19),
      alignment: Alignment.bottomCenter,
      height: 150,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(45.0),
        color: AppColors.ffffff,
      ),
      child: Text(
        title,
        style: TextStyle(
          color: AppColors.c1A441D,
          fontSize: 30,
          fontWeight: FontWeight.w600,
          fontFamily: AppFonts.nunito,
        ),
      ),
    );
  }
}
