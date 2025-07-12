import '../../../../utils/imports/common_libs.dart';

/// Item individual de página de onboarding
class OnboardingPageItem extends StatelessWidget {
  final String title;
  final String description;
  final Widget illustration;

  const OnboardingPageItem({
    super.key,
    required this.title,
    required this.description,
    required this.illustration,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final ui = uiConstants;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: ui.spacing6),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Ilustração
          Expanded(
            flex: ui.onboardingIllustrationFlex,
            child: Center(
              child: Container(
                constraints: BoxConstraints(
                  maxWidth: ui.onboardingIllustrationMaxSize,
                  maxHeight: ui.onboardingIllustrationMaxSize,
                ),
                child: illustration,
              ),
            ),
          ),
          
          SizedBox(height: ui.spacing8),
          
          // Título
          Text(
            title,
            style: TextStyle(
              fontSize: ui.onboardingTitleFontSize,
              fontWeight: FontWeight.bold,
              fontFamily: ui.onboardingFontFamily,
              color: ui.getColorByTheme(
                isDark: isDark,
                lightColor: ui.lightOnSurface,
                darkColor: ui.darkOnSurface,
              ),
            ),
            textAlign: TextAlign.center,
          ),
          
          SizedBox(height: ui.spacing4),
          
          // Descrição
          Padding(
            padding: EdgeInsets.symmetric(horizontal: ui.spacing4),
            child: Text(
              description,
              style: TextStyle(
                fontSize: ui.onboardingDescriptionFontSize,
                fontFamily: ui.onboardingFontFamily,
                color: ui.getColorByTheme(
                  isDark: isDark,
                  lightColor: ui.lightOnSurfaceVariant,
                  darkColor: ui.darkOnSurfaceVariant,
                ),
                height: ui.onboardingDescriptionLineHeight,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          
          SizedBox(height: ui.spacing8),
        ],
      ),
    );
  }
}