import '../../../../utils/imports/common_libs.dart';
import 'package:flutter_animate/flutter_animate.dart';

/// Ilustrações SVG para as páginas de onboarding
class OnboardingIllustrations {
  static Widget get favorites {
    final ui = UIConstants();
    return _FavoritesIllustration()
        .animate()
        .fadeIn(duration: ui.animationDurationSlow.ms, curve: Curves.easeOutCubic)
        .scale(
          begin: Offset(ui.animationScaleExtraLarge, ui.animationScaleExtraLarge),
          duration: ui.animationDurationMedium.ms,
          curve: Curves.elasticOut,
        )
        .then(delay: ui.animationDelayShort.ms)
        .shimmer(
          duration: ui.animationDurationExtraSlow.ms,
          color: ui.white.withValues(alpha: ui.animationAlphaMedium),
        );
  }

  static Widget get chef {
    final ui = UIConstants();
    return _ChefIllustration()
        .animate()
        .fadeIn(duration: ui.animationDurationSlow.ms, curve: Curves.easeOutCubic)
        .slideY(
          begin: ui.animationSlideLarge,
          duration: ui.animationDelayVeryLong.ms,
          curve: Curves.easeOutBack,
        )
        .then(delay: ui.animationDelayMedium.ms)
        .shimmer(
            duration: ui.animationDurationExtraSlow.ms,
            color: ui.white.withValues(alpha: ui.animationAlphaMedium),
          );
  }

  static Widget get delivery {
    final ui = UIConstants();
    return _DeliveryIllustration()
        .animate()
        .fadeIn(duration: ui.animationDurationSlow.ms, curve: Curves.easeOutCubic)
        .slideX(
          begin: ui.animationSlideLarge,
          duration: ui.animationDelayVeryLong.ms,
          curve: Curves.easeOutBack,
        )
        .then(delay: ui.animationDelayLong.ms)
        .shimmer(
            duration: ui.animationDurationExtraSlow.ms,
            color: ui.white.withValues(alpha: ui.animationAlphaMedium),
          );
  }
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
      width: ui.onboardingIllustrationSize,
      height: ui.onboardingIllustrationSize,
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
            width: ui.onboardingBackgroundSize,
            height: ui.onboardingBackgroundSize,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: RadialGradient(
                colors: [
                  primaryColor.withValues(alpha: ui.animationAlphaLight),
                  primaryColor.withValues(alpha: ui.animationAlphaVeryLight),
                ],
              ),
            ),
          ),
          // Ícone principal
          Icon(Icons.favorite, size: ui.onboardingMainIconSize, color: primaryColor)
              .animate()
              .scale(
                begin: Offset(ui.animationScaleNormal, ui.animationScaleNormal),
                end: Offset(ui.animationScaleSlightlyLarge, ui.animationScaleSlightlyLarge),
                duration: ui.animationDurationUltraSlow.ms,
                curve: Curves.easeInOut,
              )
              .then()
              .scale(
                begin: Offset(ui.animationScaleSlightlyLarge, ui.animationScaleSlightlyLarge),
                end: Offset(ui.animationScaleNormal, ui.animationScaleNormal),
                duration: ui.animationDurationUltraSlow.ms,
                curve: Curves.easeInOut,
              ),
          // Ícones menores ao redor
          Positioned(
            top: ui.onboardingIconPosition60,
            right: ui.onboardingIconPosition60,
            child: Icon(Icons.restaurant, size: ui.onboardingSecondaryIconSize, color: secondaryColor)
                .animate(delay: ui.animationDelayExtraLong.ms)
                .fadeIn(duration: ui.animationDurationMedium.ms)
                .slideX(begin: ui.animationSlideLarge, duration: ui.animationDurationFast.ms, curve: Curves.easeOut)
                .then(delay: ui.animationDurationVerySlow.ms)
                .rotate(begin: 0, end: ui.animationRotationMedium, duration: ui.animationDurationExtraSlow.ms)
                .then()
                .rotate(begin: ui.animationRotationMedium, end: -ui.animationRotationMedium, duration: ui.animationDurationGiga.ms)
                .then()
                .rotate(begin: -ui.animationRotationMedium, end: 0, duration: ui.animationDurationExtraSlow.ms),
          ),
          Positioned(
            bottom: ui.onboardingIconPosition60,
            left: ui.onboardingIconPosition60,
            child:
                Icon(
                      Icons.local_pizza,
                      size: ui.onboardingTertiaryIconSize,
                      color: primaryColor.withValues(alpha: ui.animationAlphaStrong),
                    )
                    .animate(delay: ui.animationDelayVeryLong.ms)
                    .fadeIn(duration: ui.animationDurationMedium.ms)
                    .slideY(
                      begin: ui.animationSlideLarge,
                      duration: ui.animationDurationFast.ms,
                      curve: Curves.bounceOut,
                    )
                    .then(delay: ui.animationDelayUltraLong.ms)
                    .scale(
                      begin: Offset(ui.animationScaleNormal, ui.animationScaleNormal),
                      end: Offset(ui.animationScaleLarger, ui.animationScaleLarger),
                      duration: 1800.ms,
                      curve: Curves.easeInOut,
                    )
                    .then()
                    .scale(
                      begin: Offset(ui.animationScaleLarger, ui.animationScaleLarger),
                      end: Offset(ui.animationScaleNormal, ui.animationScaleNormal),
                      duration: 1800.ms,
                      curve: Curves.easeInOut,
                    ),
          ),
          Positioned(
            top: ui.onboardingIconPosition80,
            left: ui.onboardingIconPosition80,
            child:
                Icon(
                      Icons.cake,
                      size: ui.onboardingSmallIconSize,
                      color: secondaryColor.withValues(alpha: ui.animationAlphaVeryStrong),
                    )
                    .animate(delay: ui.animationDelayMega.ms)
                    .fadeIn(duration: ui.animationDurationMedium.ms)
                    .scale(
                      begin: Offset(ui.animationScaleLarge, ui.animationScaleLarge),
                      duration: ui.animationDelayExtraLong.ms,
                      curve: Curves.elasticOut,
                    )
                    .then(delay: ui.animationDelayTera.ms)
                    .rotate(begin: 0, end: ui.animationRotationFull, duration: ui.animationDurationTera.ms),
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
      width: ui.onboardingIllustrationSize,
      height: ui.onboardingIllustrationSize,
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
            width: ui.onboardingBackgroundSize,
            height: ui.onboardingBackgroundSize,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: RadialGradient(
                colors: [
                  secondaryColor.withValues(alpha: ui.animationAlphaLight),
                  secondaryColor.withValues(alpha: ui.animationAlphaVeryLight),
                ],
              ),
            ),
          ),
          // Ícone principal do chef
          Icon(Icons.person_outline, size: ui.onboardingMainIconSize, color: primaryColor)
              .animate()
              .slideY(
                begin: 0,
                end: -ui.animationSlideSmall,
                duration: ui.animationDurationMega.ms,
                curve: Curves.easeInOut,
              )
              .then()
              .slideY(
                begin: -ui.animationSlideSmall,
                end: 0,
                duration: ui.animationDurationMega.ms,
                curve: Curves.easeInOut,
              ),
          // Chapéu do chef
          Positioned(
            top: ui.onboardingIconPosition80,
            child: Icon(Icons.restaurant_menu, size: ui.onboardingChefHatIconSize, color: secondaryColor)
                .animate(delay: ui.animationDelayLong.ms)
                .fadeIn(duration: ui.animationDurationSlow.ms)
                .slideY(begin: -ui.animationSlideLarge, duration: ui.animationDurationMedium.ms, curve: Curves.bounceOut)
                .then(delay: ui.animationDurationVerySlow.ms)
                .rotate(begin: 0, end: ui.animationRotationSmall, duration: 1800.ms)
                .then()
                .rotate(begin: ui.animationRotationSmall, end: -ui.animationRotationSmall, duration: 3600.ms)
                .then()
                .rotate(begin: -ui.animationRotationSmall, end: 0, duration: 1800.ms),
          ),
          // Utensílios ao redor
          Positioned(
            top: ui.onboardingIconPosition70,
            right: ui.onboardingIconPosition70,
            child:
                Icon(
                      Icons.kitchen,
                      size: ui.onboardingTertiaryIconSize,
                      color: primaryColor.withValues(alpha: ui.animationAlphaStrong),
                    )
                    .animate(delay: ui.animationDurationMedium.ms)
                    .fadeIn(duration: ui.animationDurationMedium.ms)
                    .scale(
                      begin: Offset(ui.animationScaleMedium, ui.animationScaleMedium),
                      duration: ui.animationDelayExtraLong.ms,
                      curve: Curves.elasticOut,
                    )
                    .then(delay: ui.animationDelayUltraLong.ms)
                    .shimmer(
                      duration: ui.animationDurationGiga.ms,
                      color: primaryColor.withValues(alpha: ui.animationAlphaHeavy),
                    )
                    .then(delay: ui.animationDurationVerySlow.ms)
                    .shimmer(
                      duration: ui.animationDurationGiga.ms,
                      color: primaryColor.withValues(alpha: ui.animationAlphaHeavy),
                    ),
          ),
          Positioned(
            bottom: ui.onboardingIconPosition70,
            left: ui.onboardingIconPosition70,
            child:
                Icon(
                      Icons.dining,
                      size: ui.onboardingSmallIconSize,
                      color: secondaryColor.withValues(alpha: ui.animationAlphaVeryStrong),
                    )
                    .animate(delay: ui.animationDelayUltraLong.ms)
                    .fadeIn(duration: ui.animationDurationMedium.ms)
                    .slideX(
                      begin: -ui.animationSlideExtraLarge,
                      duration: ui.animationDurationFast.ms,
                      curve: Curves.easeOut,
                    )
                    .then(delay: ui.animationDurationExtraSlow.ms)
                    .scale(
                      begin: Offset(ui.animationScaleNormal, ui.animationScaleNormal),
                      end: Offset(ui.animationScaleModeratelyLarge, ui.animationScaleModeratelyLarge),
                      duration: 2200.ms,
                      curve: Curves.easeInOut,
                    )
                    .then()
                    .scale(
                      begin: Offset(ui.animationScaleModeratelyLarge, ui.animationScaleModeratelyLarge),
                      end: Offset(ui.animationScaleNormal, ui.animationScaleNormal),
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
      width: ui.onboardingIllustrationSize,
      height: ui.onboardingIllustrationSize,
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
            width: ui.onboardingBackgroundSize,
            height: ui.onboardingBackgroundSize,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: RadialGradient(
                colors: [
                  primaryColor.withValues(alpha: ui.animationAlphaLight),
                  primaryColor.withValues(alpha: ui.animationAlphaVeryLight),
                ],
              ),
            ),
          ),
          // Ícone principal de entrega
          Icon(Icons.delivery_dining, size: ui.onboardingMainIconSize, color: primaryColor)
              .animate()
              .slideX(
                begin: 0,
                end: ui.animationSlideNormal,
                duration: ui.animationDurationUltraSlow.ms,
                curve: Curves.easeInOut,
              )
              .then()
              .slideX(
                begin: ui.animationSlideNormal,
                end: -ui.animationSlideNormal,
                duration: ui.animationDurationTera.ms,
                curve: Curves.easeInOut,
              )
              .then()
              .slideX(
                begin: -ui.animationSlideNormal,
                end: 0,
                duration: ui.animationDurationUltraSlow.ms,
                curve: Curves.easeInOut,
              ),
          // Elementos de entrega ao redor
          Positioned(
            top: ui.onboardingIconPosition60,
            right: ui.onboardingIconPosition60,
            child: Icon(Icons.local_shipping, size: ui.onboardingSecondaryIconSize, color: secondaryColor)
                .animate(delay: ui.animationDelayExtraLong.ms)
                .fadeIn(duration: ui.animationDurationMedium.ms)
                .slideX(begin: ui.animationSlideHuge, duration: ui.animationDelayExtraLong.ms, curve: Curves.easeOutBack)
                .then(delay: ui.animationDelayTera.ms)
                .slideX(
                  begin: 0,
                  end: ui.animationSlideMedium,
                  duration: ui.animationDurationExtraSlow.ms,
                  curve: Curves.easeInOut,
                )
                .then()
                .slideX(
                  begin: ui.animationSlideMedium,
                  end: 0,
                  duration: ui.animationDurationExtraSlow.ms,
                  curve: Curves.easeInOut,
                ),
          ),
          Positioned(
            bottom: ui.onboardingIconPosition60,
            left: ui.onboardingIconPosition60,
            child:
                Icon(
                      Icons.schedule,
                      size: ui.onboardingTertiaryIconSize,
                      color: primaryColor.withValues(alpha: ui.animationAlphaStrong),
                    )
                    .animate(delay: ui.animationDelayVeryLong.ms)
                    .fadeIn(duration: ui.animationDurationMedium.ms)
                    .scale(
                      begin: Offset(ui.animationScaleSmall, ui.animationScaleSmall),
                      duration: ui.animationDurationMedium.ms,
                      curve: Curves.elasticOut,
                    )
                    .then(delay: ui.animationDurationVerySlow.ms)
                    .rotate(begin: 0, end: ui.animationRotationFull, duration: ui.animationDurationPeta.ms),
          ),
          Positioned(
            top: ui.onboardingIconPosition80,
            left: ui.onboardingIconPosition80,
            child:
                Icon(
                      Icons.location_on,
                      size: ui.onboardingSmallIconSize,
                      color: secondaryColor.withValues(alpha: ui.animationAlphaVeryStrong),
                    )
                    .animate(delay: ui.animationDelayMega.ms)
                    .fadeIn(duration: ui.animationDurationMedium.ms)
                    .slideY(
                      begin: -ui.animationSlideExtraLarge,
                      duration: ui.animationDurationFast.ms,
                      curve: Curves.bounceOut,
                    )
                    .then(delay: ui.animationDelayUltraLong.ms)
                    .scale(
                      begin: Offset(ui.animationScaleNormal, ui.animationScaleNormal),
                      end: Offset(ui.animationScaleVeryLarge, ui.animationScaleVeryLarge),
                      duration: ui.animationDurationVerySlow.ms,
                      curve: Curves.easeInOut,
                    )
                    .then()
                    .scale(
                      begin: Offset(ui.animationScaleVeryLarge, ui.animationScaleVeryLarge),
                      end: Offset(ui.animationScaleNormal, ui.animationScaleNormal),
                      duration: ui.animationDurationVerySlow.ms,
                      curve: Curves.easeInOut,
                    )
                    .then(delay: ui.animationDurationUltraSlow.ms),
          ),
          // Indicador de "grátis"
          Positioned(
            bottom: ui.onboardingIconPosition80,
            right: ui.onboardingIconPosition80,
            child:
                Container(
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
                          fontSize: ui.onboardingFreeTextSize,
                          fontWeight: FontWeight.bold,
                          color: ui.getColorByTheme(
                            isDark: isDark,
                            lightColor: ui.lightOnPrimary,
                            darkColor: ui.darkOnPrimary,
                          ),
                        ),
                      ),
                    )
                    .animate(delay: ui.animationDelayGiga.ms)
                    .fadeIn(duration: ui.animationDurationSlow.ms)
                    .scale(
                      begin: Offset(ui.animationScaleLarge, ui.animationScaleLarge),
                      duration: ui.animationDurationMedium.ms,
                      curve: Curves.elasticOut,
                    )
                    .then(delay: ui.animationDurationUltraSlow.ms)
                    .shimmer(
                      duration: ui.animationDurationMega.ms,
                      color: ui.white.withValues(alpha: ui.animationAlphaVeryHeavy),
                    )
                    .then(delay: ui.animationDurationExtraSlow.ms)
                    .shimmer(
                       duration: ui.animationDurationMega.ms,
                       color: ui.white.withValues(alpha: ui.animationAlphaVeryHeavy),
                     ),
          ),
        ],
      ),
    );
  }
}
