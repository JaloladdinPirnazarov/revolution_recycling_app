
import 'importer.dart';

class TextTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': {
      AppTexts.searchPageTitle: 'ITEM SEARCH',
      AppTexts.binLocatorPageTitle: 'BIN LOCATOR',
      AppTexts.barCodeScannerPageTitle: 'SCAN YOUR ITEM',
      AppTexts.faqPageTitle: 'FORUM',
      AppTexts.searchByItem:'Search By Item:',
      AppTexts.searchByCategory:'Search By Category:',
      AppTexts.itemSearchExample:'EX) MILK BOTTLE',
      AppTexts.paper: 'PAPER',
      AppTexts.plastic: 'PLASTIC',
      AppTexts.metal: 'METAL',
      AppTexts.cardboard: 'CARDBOARD',
      AppTexts.battery: 'BATTERY',
      AppTexts.glass: 'GLASS',
      AppTexts.electric: 'ELECTRIC',
      AppTexts.organic: 'ORGANIC',
    },
  };
}
