import '../../../../utils/imports/common_libs.dart';

class LanguageSelector extends StatelessWidget {
  const LanguageSelector({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final ui = UIConstants();

    return Consumer<LocaleProvider>(
      builder: (context, localeProvider, child) {
        return PopupMenuButton<Locale>(
          icon: Icon(
            Icons.language,
            color: ui.getColorByTheme(
              isDark: isDark,
              lightColor: ui.lightOnSurface,
              darkColor: ui.darkOnSurface,
            ),
          ),
          tooltip: LocaleConstants.languageSelectionTooltip(context),
          color: ui.getColorByTheme(
            isDark: isDark,
            lightColor: ui.lightSurface,
            darkColor: ui.darkSurface,
          ),
          elevation: ui.elevation2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(ui.radius12),
            side: BorderSide(
              color: ui.getColorByTheme(
                isDark: isDark,
                lightColor: ui.lightOutlineVariant.withValues(alpha: 0.2),
                darkColor: ui.darkOutlineVariant.withValues(alpha: 0.2),
              ),
              width: ui.borderWidth1,
            ),
          ),
          onSelected: (Locale locale) {
            localeProvider.setLocale(locale);
          },
          itemBuilder: (BuildContext context) => LocaleConstants
              .supportedLocales
              .map(
                (localeData) => PopupMenuItem<Locale>(
                  value: localeData.locale,
                  padding: EdgeInsets.symmetric(
                    horizontal: ui.spacing4,
                    vertical: ui.spacing2,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(ui.radius8),
                      color: localeProvider.currentLocale == localeData.locale
                          ? ui.getColorByTheme(
                              isDark: isDark,
                              lightColor: ui.lightPrimary.withValues(alpha: 0.1),
                              darkColor: ui.darkPrimary.withValues(alpha: 0.1),
                            )
                          : Colors.transparent,
                    ),
                    padding: EdgeInsets.all(ui.spacing2),
                    child: Row(
                      children: [
                        Text(
                          localeData.flag,
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'SanFranciscoPro',
                          ),
                        ),
                        SizedBox(width: ui.spacing2),
                        Text(
                          localeData.displayName,
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'SanFranciscoPro',
                            color: localeProvider.currentLocale == localeData.locale
                                ? ui.getColorByTheme(
                                    isDark: isDark,
                                    lightColor: ui.lightPrimary,
                                    darkColor: ui.darkPrimary,
                                  )
                                : ui.getColorByTheme(
                                    isDark: isDark,
                                    lightColor: ui.lightOnSurface,
                                    darkColor: ui.darkOnSurface,
                                  ),
                            fontWeight: localeProvider.currentLocale == localeData.locale
                                ? FontWeight.w600
                                : FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
              .toList(),
        );
      },
    );
  }
}
