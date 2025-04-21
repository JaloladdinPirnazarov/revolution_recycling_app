import '../../../utils/tools/importer.dart';

class ItemSearchPage extends StatelessWidget {
  const ItemSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (settings){
        return MaterialPageRoute(
          builder: (_)=> ItemSearchHomePage()
        );
      },
    );
  }
}
