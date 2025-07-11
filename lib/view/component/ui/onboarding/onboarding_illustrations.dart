import '../../../../utils/imports/common_libs.dart';

/// Ilustrações SVG para as páginas de onboarding
class OnboardingIllustrations {
  static Widget get favorites => _FavoritesIllustration();
  static Widget get chef => _ChefIllustration();
  static Widget get delivery => _DeliveryIllustration();
}

class _FavoritesIllustration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final ui = UIConstants();
    
    final primaryColor = ui.getColorByTheme(
      isDark: isDark,
      lightColor: ui.lightPrimary,
      darkColor: ui.darkPrimary,
    );
    
    final secondaryColor = ui.getColorByTheme(
      isDark: isDark,
      lightColor: ui.lightSecondary,
      darkColor: ui.darkSecondary,
    );

    return Container(
      width: 280,
      height: 280,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(ui.radius24),
        color: ui.getColorByTheme(
          isDark: isDark,
          lightColor: ui.lightSurfaceContainer,
          darkColor: ui.darkSurfaceContainer,
        ),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Fundo com gradiente sutil
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: RadialGradient(
                colors: [
                  primaryColor.withValues(alpha: 0.1),
                  primaryColor.withValues(alpha: 0.05),
                ],
              ),
            ),
          ),
          // Ícone principal
          Icon(
            Icons.favorite,
            size: 80,
            color: primaryColor,
          ),
          // Ícones menores ao redor
          Positioned(
            top: 60,
            right: 60,
            child: Icon(
              Icons.restaurant,
              size: 32,
              color: secondaryColor,
            ),
          ),
          Positioned(
            bottom: 60,
            left: 60,
            child: Icon(
              Icons.local_pizza,
              size: 28,
              color: primaryColor.withValues(alpha: 0.7),
            ),
          ),
          Positioned(
            top: 80,
            left: 80,
            child: Icon(
              Icons.cake,
              size: 24,
              color: secondaryColor.withValues(alpha: 0.8),
            ),
          ),
        ],
      ),
    );
  }
}

class _ChefIllustration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final ui = UIConstants();
    
    final primaryColor = ui.getColorByTheme(
      isDark: isDark,
      lightColor: ui.lightPrimary,
      darkColor: ui.darkPrimary,
    );
    
    final secondaryColor = ui.getColorByTheme(
      isDark: isDark,
      lightColor: ui.lightSecondary,
      darkColor: ui.darkSecondary,
    );

    return Container(
      width: 280,
      height: 280,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(ui.radius24),
        color: ui.getColorByTheme(
          isDark: isDark,
          lightColor: ui.lightSurfaceContainer,
          darkColor: ui.darkSurfaceContainer,
        ),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Fundo com gradiente sutil
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: RadialGradient(
                colors: [
                  secondaryColor.withValues(alpha: 0.1),
                  secondaryColor.withValues(alpha: 0.05),
                ],
              ),
            ),
          ),
          // Ícone principal do chef
          Icon(
            Icons.person_outline,
            size: 80,
            color: primaryColor,
          ),
          // Chapéu do chef
          Positioned(
            top: 80,
            child: Icon(
              Icons.restaurant_menu,
              size: 40,
              color: secondaryColor,
            ),
          ),
          // Utensílios ao redor
          Positioned(
            top: 70,
            right: 70,
            child: Icon(
              Icons.kitchen,
              size: 28,
              color: primaryColor.withValues(alpha: 0.7),
            ),
          ),
          Positioned(
            bottom: 70,
            left: 70,
            child: Icon(
              Icons.dining,
              size: 24,
              color: secondaryColor.withValues(alpha: 0.8),
            ),
          ),
        ],
      ),
    );
  }
}

class _DeliveryIllustration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final ui = UIConstants();
    
    final primaryColor = ui.getColorByTheme(
      isDark: isDark,
      lightColor: ui.lightPrimary,
      darkColor: ui.darkPrimary,
    );
    
    final secondaryColor = ui.getColorByTheme(
      isDark: isDark,
      lightColor: ui.lightSecondary,
      darkColor: ui.darkSecondary,
    );

    return Container(
      width: 280,
      height: 280,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(ui.radius24),
        color: ui.getColorByTheme(
          isDark: isDark,
          lightColor: ui.lightSurfaceContainer,
          darkColor: ui.darkSurfaceContainer,
        ),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Fundo com gradiente sutil
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: RadialGradient(
                colors: [
                  primaryColor.withValues(alpha: 0.1),
                  primaryColor.withValues(alpha: 0.05),
                ],
              ),
            ),
          ),
          // Ícone principal de entrega
          Icon(
            Icons.delivery_dining,
            size: 80,
            color: primaryColor,
          ),
          // Elementos de entrega ao redor
          Positioned(
            top: 60,
            right: 60,
            child: Icon(
              Icons.local_shipping,
              size: 32,
              color: secondaryColor,
            ),
          ),
          Positioned(
            bottom: 60,
            left: 60,
            child: Icon(
              Icons.schedule,
              size: 28,
              color: primaryColor.withValues(alpha: 0.7),
            ),
          ),
          Positioned(
            top: 80,
            left: 80,
            child: Icon(
              Icons.location_on,
              size: 24,
              color: secondaryColor.withValues(alpha: 0.8),
            ),
          ),
          // Indicador de "grátis"
          Positioned(
            bottom: 80,
            right: 80,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: ui.spacing2,
                vertical: ui.spacing1,
              ),
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(ui.radius8),
              ),
              child: Text(
                'FREE',
                style: GoogleFonts.inter(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: ui.getColorByTheme(
                    isDark: isDark,
                    lightColor: ui.lightOnPrimary,
                    darkColor: ui.darkOnPrimary,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}