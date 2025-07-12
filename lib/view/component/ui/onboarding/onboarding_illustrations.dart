import '../../../../utils/imports/common_libs.dart';
import 'package:flutter_animate/flutter_animate.dart';

/// Ilustrações SVG para as páginas de onboarding
class OnboardingIllustrations {
  static Widget get favorites => _FavoritesIllustration()
      .animate()
      .fadeIn(duration: 800.ms, curve: Curves.easeOutCubic)
      .scale(begin: const Offset(0.8, 0.8), duration: 600.ms, curve: Curves.elasticOut)
      .then(delay: 200.ms)
      .shimmer(duration: 1500.ms, color: Colors.white.withValues(alpha: 0.3));
  
  static Widget get chef => _ChefIllustration()
      .animate()
      .fadeIn(duration: 800.ms, curve: Curves.easeOutCubic)
      .slideY(begin: 0.3, duration: 700.ms, curve: Curves.easeOutBack)
      .then(delay: 300.ms)
      .shimmer(duration: 1500.ms, color: Colors.white.withValues(alpha: 0.3));
  
  static Widget get delivery => _DeliveryIllustration()
      .animate()
      .fadeIn(duration: 800.ms, curve: Curves.easeOutCubic)
      .slideX(begin: 0.3, duration: 700.ms, curve: Curves.easeOutBack)
      .then(delay: 400.ms)
      .shimmer(duration: 1500.ms, color: Colors.white.withValues(alpha: 0.3));
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
          )
              .animate()
              .scale(
                begin: const Offset(1.0, 1.0),
                end: const Offset(1.1, 1.1),
                duration: 2000.ms,
                curve: Curves.easeInOut,
              )
              .then()
              .scale(
                begin: const Offset(1.1, 1.1),
                end: const Offset(1.0, 1.0),
                duration: 2000.ms,
                curve: Curves.easeInOut,
              ),
          // Ícones menores ao redor
          Positioned(
            top: 60,
            right: 60,
            child: Icon(
              Icons.restaurant,
              size: 32,
              color: secondaryColor,
            )
                .animate(delay: 500.ms)
                .fadeIn(duration: 600.ms)
                .slideX(begin: 0.5, duration: 400.ms, curve: Curves.easeOut)
                .then(delay: 1000.ms)
                .rotate(begin: 0, end: 0.1, duration: 1500.ms)
                .then()
                .rotate(begin: 0.1, end: -0.1, duration: 3000.ms)
                .then()
                .rotate(begin: -0.1, end: 0, duration: 1500.ms),
          ),
          Positioned(
            bottom: 60,
            left: 60,
            child: Icon(
              Icons.local_pizza,
              size: 28,
              color: primaryColor.withValues(alpha: 0.7),
            )
                .animate(delay: 700.ms)
                .fadeIn(duration: 600.ms)
                .slideY(begin: 0.5, duration: 400.ms, curve: Curves.bounceOut)
                .then(delay: 800.ms)
                .scale(
                  begin: const Offset(1.0, 1.0),
                  end: const Offset(1.2, 1.2),
                  duration: 1800.ms,
                  curve: Curves.easeInOut,
                )
                .then()
                .scale(
                  begin: const Offset(1.2, 1.2),
                  end: const Offset(1.0, 1.0),
                  duration: 1800.ms,
                  curve: Curves.easeInOut,
                ),
          ),
          Positioned(
            top: 80,
            left: 80,
            child: Icon(
              Icons.cake,
              size: 24,
              color: secondaryColor.withValues(alpha: 0.8),
            )
                .animate(delay: 900.ms)
                .fadeIn(duration: 600.ms)
                .scale(begin: const Offset(0.5, 0.5), duration: 500.ms, curve: Curves.elasticOut)
                .then(delay: 1200.ms)
                .rotate(begin: 0, end: 1, duration: 4000.ms),
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
          )
              .animate()
              .slideY(
                begin: 0,
                end: -0.02,
                duration: 2500.ms,
                curve: Curves.easeInOut,
              )
              .then()
              .slideY(
                begin: -0.02,
                end: 0,
                duration: 2500.ms,
                curve: Curves.easeInOut,
              ),
          // Chapéu do chef
          Positioned(
            top: 80,
            child: Icon(
              Icons.restaurant_menu,
              size: 40,
              color: secondaryColor,
            )
                .animate(delay: 400.ms)
                .fadeIn(duration: 800.ms)
                .slideY(begin: -0.3, duration: 600.ms, curve: Curves.bounceOut)
                .then(delay: 1000.ms)
                .rotate(begin: 0, end: 0.05, duration: 1800.ms)
                .then()
                .rotate(begin: 0.05, end: -0.05, duration: 3600.ms)
                .then()
                .rotate(begin: -0.05, end: 0, duration: 1800.ms),
          ),
          // Utensílios ao redor
          Positioned(
            top: 70,
            right: 70,
            child: Icon(
              Icons.kitchen,
              size: 28,
              color: primaryColor.withValues(alpha: 0.7),
            )
                .animate(delay: 600.ms)
                .fadeIn(duration: 600.ms)
                .scale(begin: const Offset(0.3, 0.3), duration: 500.ms, curve: Curves.elasticOut)
                .then(delay: 800.ms)
                .shimmer(duration: 3000.ms, color: primaryColor.withValues(alpha: 0.4))
                .then(delay: 1000.ms)
                .shimmer(duration: 3000.ms, color: primaryColor.withValues(alpha: 0.4)),
          ),
          Positioned(
            bottom: 70,
            left: 70,
            child: Icon(
              Icons.dining,
              size: 24,
              color: secondaryColor.withValues(alpha: 0.8),
            )
                .animate(delay: 800.ms)
                .fadeIn(duration: 600.ms)
                .slideX(begin: -0.5, duration: 400.ms, curve: Curves.easeOut)
                .then(delay: 1500.ms)
                .scale(
                  begin: const Offset(1.0, 1.0),
                  end: const Offset(1.15, 1.15),
                  duration: 2200.ms,
                  curve: Curves.easeInOut,
                )
                .then()
                .scale(
                  begin: const Offset(1.15, 1.15),
                  end: const Offset(1.0, 1.0),
                  duration: 2200.ms,
                  curve: Curves.easeInOut,
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
          )
              .animate()
              .slideX(
                begin: 0,
                end: 0.03,
                duration: 2000.ms,
                curve: Curves.easeInOut,
              )
              .then()
              .slideX(
                begin: 0.03,
                end: -0.03,
                duration: 4000.ms,
                curve: Curves.easeInOut,
              )
              .then()
              .slideX(
                begin: -0.03,
                end: 0,
                duration: 2000.ms,
                curve: Curves.easeInOut,
              ),
          // Elementos de entrega ao redor
          Positioned(
            top: 60,
            right: 60,
            child: Icon(
              Icons.local_shipping,
              size: 32,
              color: secondaryColor,
            )
                .animate(delay: 500.ms)
                .fadeIn(duration: 600.ms)
                .slideX(begin: 0.8, duration: 500.ms, curve: Curves.easeOutBack)
                .then(delay: 1200.ms)
                .slideX(
                  begin: 0,
                  end: 0.1,
                  duration: 1500.ms,
                  curve: Curves.easeInOut,
                )
                .then()
                .slideX(
                  begin: 0.1,
                  end: 0,
                  duration: 1500.ms,
                  curve: Curves.easeInOut,
                ),
          ),
          Positioned(
            bottom: 60,
            left: 60,
            child: Icon(
              Icons.schedule,
              size: 28,
              color: primaryColor.withValues(alpha: 0.7),
            )
                .animate(delay: 700.ms)
                .fadeIn(duration: 600.ms)
                .scale(begin: const Offset(0.2, 0.2), duration: 600.ms, curve: Curves.elasticOut)
                .then(delay: 1000.ms)
                .rotate(begin: 0, end: 1, duration: 8000.ms),
          ),
          Positioned(
            top: 80,
            left: 80,
            child: Icon(
              Icons.location_on,
              size: 24,
              color: secondaryColor.withValues(alpha: 0.8),
            )
                .animate(delay: 900.ms)
                .fadeIn(duration: 600.ms)
                .slideY(begin: -0.5, duration: 400.ms, curve: Curves.bounceOut)
                .then(delay: 800.ms)
                .scale(
                  begin: const Offset(1.0, 1.0),
                  end: const Offset(1.3, 1.3),
                  duration: 1000.ms,
                  curve: Curves.easeInOut,
                )
                .then()
                .scale(
                  begin: const Offset(1.3, 1.3),
                  end: const Offset(1.0, 1.0),
                  duration: 1000.ms,
                  curve: Curves.easeInOut,
                )
                .then(delay: 2000.ms),
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
            )
                .animate(delay: 1100.ms)
                .fadeIn(duration: 800.ms)
                .scale(begin: const Offset(0.5, 0.5), duration: 600.ms, curve: Curves.elasticOut)
                .then(delay: 2000.ms)
                .shimmer(duration: 2500.ms, color: Colors.white.withValues(alpha: 0.6))
                .then(delay: 1500.ms)
                .shimmer(duration: 2500.ms, color: Colors.white.withValues(alpha: 0.6)),
          ),
        ],
      ),
    );
  }
}