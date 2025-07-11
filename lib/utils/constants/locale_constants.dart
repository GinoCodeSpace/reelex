
import '../imports/common_libs.dart';



class LocaleConstants {
  LocaleConstants._();

  /// Configuração base dos locales suportados
  static const List<MapEntry<Locale, String>> _baseLocales = [
    MapEntry(Locale('pt', 'BR'), '🇧🇷'),
    MapEntry(Locale('en', 'US'), '🇺🇸'),
    MapEntry(Locale('es', 'MX'), '🇲🇽'),
  ];

  /// Lista de LocaleData gerada dinamicamente
  static List<LocaleData> get supportedLocales => _baseLocales
      .map((entry) => LocaleData.fromLocale(entry.key, entry.value))
      .toList();

  /// Métodos para obter tooltips localizados (requer BuildContext)
  static String languageSelectionTooltip(BuildContext context) => StringConstants.languageSelection(context);
  static String lightModeTooltip(BuildContext context) => StringConstants.lightMode(context);
  static String darkModeTooltip(BuildContext context) => StringConstants.darkMode(context);
  
  /// Métodos para obter tooltips com locale específico (sem BuildContext)
  static String languageSelectionTooltipWithLocale(Locale locale) => StringConstants.getLocalizedStringWithLocale(locale, 'languageSelection');
  static String lightModeTooltipWithLocale(Locale locale) => StringConstants.getLocalizedStringWithLocale(locale, 'lightMode');
  static String darkModeTooltipWithLocale(Locale locale) => StringConstants.getLocalizedStringWithLocale(locale, 'darkMode');
}