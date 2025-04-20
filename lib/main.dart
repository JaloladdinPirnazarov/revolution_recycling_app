import './utils/tools/importer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
      translations: TextTranslation(),
      locale: const Locale('en','EN'),
      fallbackLocale: const Locale('en','EN'),
      defaultTransition: Transition.fade,
    );
  }
}
