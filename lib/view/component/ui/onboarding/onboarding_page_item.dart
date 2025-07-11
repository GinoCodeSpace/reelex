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
    final ui = UIConstants();

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: ui.spacing6),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Ilustração
          Expanded(
            flex: 3,
            child: Center(
              child: Container(
                constraints: const BoxConstraints(
                  maxWidth: 300,
                  maxHeight: 300,
                ),
                child: illustration,
              ),
            ),
          ),
          
          SizedBox(height: ui.spacing8),
          
          // Título
          Text(
            title,
            style: GoogleFonts.inter(
              fontSize: 28,
              fontWeight: FontWeight.bold,
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
              style: GoogleFonts.inter(
                fontSize: 16,
                color: ui.getColorByTheme(
                  isDark: isDark,
                  lightColor: ui.lightOnSurfaceVariant,
                  darkColor: ui.darkOnSurfaceVariant,
                ),
                height: 1.5,
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