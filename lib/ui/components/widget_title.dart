import '../../utils/tools/importer.dart';

class WidgetTitle extends StatelessWidget {
  final String text;
  const WidgetTitle({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: AppColors.c000000,
        fontSize: 24,
        fontWeight: FontWeight.w400,
        fontFamily: AppFonts.seoulNamsan,
      ),
    );
  }
}
