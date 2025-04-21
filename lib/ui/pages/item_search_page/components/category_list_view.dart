import '../../../../utils/tools/importer.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    int columnCount = (categories.length / 2).ceil();
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: columnCount,
      itemBuilder: (context, index) {
        int firstIndex = index * 2;
        int secondIndex = firstIndex + 1;
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CategoryListTile(
                position: firstIndex,
                category: categories[firstIndex],
              ),
              SizedBox(height: 16),
              if (secondIndex < categories.length)
                CategoryListTile(
                  position: secondIndex,
                  category: categories[secondIndex],
                ),
            ],
          ),
        );
      },
    );
  }
}
