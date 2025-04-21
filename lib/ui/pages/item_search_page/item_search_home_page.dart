import '../../../utils/tools/importer.dart';

class ItemSearchHomePage extends StatelessWidget {
  const ItemSearchHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Column(
        children: [
          PageTitle(title: AppTexts.searchPageTitle.tr),
          const SizedBox(height: 46),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SearchWidget(),
                  const SizedBox(height: 32),
                  WidgetTitle(text: AppTexts.searchByCategory.tr),
                  const SizedBox(height: 13),
                  SizedBox(height: 400, child: CategoryListView()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
