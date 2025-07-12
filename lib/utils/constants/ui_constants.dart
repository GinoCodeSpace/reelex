import '../imports/common_libs.dart';

class UIConstants {
  // ==========================================================================
  // THEME
  // ==========================================================================
  ThemeData get theme => customLightTheme;

  // ==========================================================================
  // SPACING - 8pt Grid System
  // ==========================================================================
  static const double _spacing0 = 0.0;
  static const double _spacing1 = 4.0; // 8 * 0.5
  static const double _spacing2 = 8.0; // 8 * 1
  static const double _spacing3 = 12.0; // 8 * 1.5
  static const double _spacing4 = 16.0; // 8 * 2
  static const double _spacing5 = 20.0; // 8 * 2.5
  static const double _spacing6 = 24.0; // 8 * 3
  static const double _spacing7 = 28.0; // 8 * 3.5
  static const double _spacing8 = 32.0; // 8 * 4
  static const double _spacing10 = 40.0; // 8 * 5
  static const double _spacing12 = 48.0; // 8 * 6
  static const double _spacing16 = 64.0; // 8 * 8
  static const double _spacing20 = 80.0; // 8 * 10
  static const double _spacing24 = 96.0; // 8 * 12

  // Spacing getters
  double get spacing0 => _spacing0;
  double get spacing1 => _spacing1;
  double get spacing2 => _spacing2;
  double get spacing3 => _spacing3;
  double get spacing4 => _spacing4;
  double get spacing5 => _spacing5;
  double get spacing6 => _spacing6;
  double get spacing7 => _spacing7;
  double get spacing8 => _spacing8;
  double get spacing10 => _spacing10;
  double get spacing12 => _spacing12;
  double get spacing16 => _spacing16;
  double get spacing20 => _spacing20;
  double get spacing24 => _spacing24;

  // ==========================================================================
  // OPACITY SCALE
  // ==========================================================================
  static const double _opacity10 = 0.1;
  static const double _opacity20 = 0.2;
  static const double _opacity30 = 0.3;
  static const double _opacity40 = 0.4;
  static const double _opacity50 = 0.5;
  static const double _opacity60 = 0.6;
  static const double _opacity70 = 0.7;
  static const double _opacity80 = 0.8;
  static const double _opacity90 = 0.9;

  // Opacity getters
  double get opacity10 => _opacity10;
  double get opacity20 => _opacity20;
  double get opacity30 => _opacity30;
  double get opacity40 => _opacity40;
  double get opacity50 => _opacity50;
  double get opacity60 => _opacity60;
  double get opacity70 => _opacity70;
  double get opacity80 => _opacity80;
  double get opacity90 => _opacity90;

  // ==========================================================================
  // BORDER RADIUS
  // ==========================================================================
  static const double _radius4 = 4.0;
  static const double _radius8 = 8.0;
  static const double _radius12 = 12.0;
  static const double _radius16 = 16.0;
  static const double _radius20 = 20.0;
  static const double _radius24 = 24.0;
  static const double _radiusFull = 50.0;

  // Border radius getters
  double get radius4 => _radius4;
  double get radius8 => _radius8;
  double get radius12 => _radius12;
  double get radius16 => _radius16;
  double get radius20 => _radius20;
  double get radius24 => _radius24;
  double get radiusFull => _radiusFull;

  // ==========================================================================
  // ELEVATION
  // ==========================================================================
  static const double _elevation2 = 2.0;
  static const double _elevation4 = 4.0;
  static const double _elevation6 = 6.0;
  static const double _elevation8 = 8.0;
  static const double _elevation12 = 12.0;
  static const double _elevation16 = 16.0;

  // Elevation getters
  double get elevation2 => _elevation2;
  double get elevation4 => _elevation4;
  double get elevation6 => _elevation6;
  double get elevation8 => _elevation8;
  double get elevation12 => _elevation12;
  double get elevation16 => _elevation16;

  // ==========================================================================
  // BORDER WIDTH
  // ==========================================================================
  static const double _borderWidth1 = 1.0;
  static const double _borderWidth2 = 2.0;
  static const double _borderWidth3 = 3.0;
  static const double _borderWidth4 = 4.0;

  // Border width getters
  double get borderWidth1 => _borderWidth1;
  double get borderWidth2 => _borderWidth2;
  double get borderWidth3 => _borderWidth3;
  double get borderWidth4 => _borderWidth4;

  // ==========================================================================
  // COMPONENT CONSTANTS
  // ==========================================================================

  // Tooltip
  static const double _tooltipMinHeight = 32.0;
  static const double _tooltipPaddingHorizontal = 12.0;
  static const double _tooltipPaddingVertical = 8.0;
  static const double _tooltipMargin = 8.0;
  static const double _tooltipVerticalOffset = 24.0;
  static const double _tooltipFontSize = 12.0;
  static const double _tooltipLetterSpacing = 0.4;
  static const int _tooltipWaitDurationMs = 500;
  static const int _tooltipShowDurationMs = 1500;

  // AppBar
  static const double _appBarTitleSpacing = 16.0;
  static const double _appBarToolbarHeight = 64.0;
  static const double _appBarLeadingWidth = 56.0;
  static const double _appBarIconSize = 24.0;
  static const double _appBarActionsPadding = 8.0;
  static const double _appBarTitleFontSize = 22.0;
  static const double _appBarToolbarFontSize = 16.0;

  // Tooltip getters
  double get tooltipMinHeight => _tooltipMinHeight;
  double get tooltipPaddingHorizontal => _tooltipPaddingHorizontal;
  double get tooltipPaddingVertical => _tooltipPaddingVertical;
  double get tooltipMargin => _tooltipMargin;
  double get tooltipVerticalOffset => _tooltipVerticalOffset;
  double get tooltipFontSize => _tooltipFontSize;
  double get tooltipLetterSpacing => _tooltipLetterSpacing;
  int get tooltipWaitDurationMs => _tooltipWaitDurationMs;
  int get tooltipShowDurationMs => _tooltipShowDurationMs;

  // AppBar getters
  double get appBarTitleSpacing => _appBarTitleSpacing;
  double get appBarToolbarHeight => _appBarToolbarHeight;
  double get appBarLeadingWidth => _appBarLeadingWidth;
  double get appBarIconSize => _appBarIconSize;
  double get appBarActionsPadding => _appBarActionsPadding;
  double get appBarTitleFontSize => _appBarTitleFontSize;
  double get appBarToolbarFontSize => _appBarToolbarFontSize;

  // ==========================================================================
  // LIGHT THEME COLORS
  // ==========================================================================

  // Primary Colors - Based on #36B77F (Green)
  Color lightPrimary = Color(0xFF36B77F);
  Color lightOnPrimary = Color(0xFFFFFFFF);
  Color lightPrimaryContainer = Color(0xFFB8F5D1);
  Color lightOnPrimaryContainer = Color(0xFF002114);
  Color lightPrimaryFixedDim = Color(0xFF9CE8B8);
  Color lightInversePrimary = Color(0xFF9CE8B8);
  Color lightSurfaceTint = Color(0xFF36B77F);

  // Secondary Colors - Based on #7A2299 (Purple)
  Color lightSecondary = Color(0xFF7A2299);
  Color lightOnSecondary = Color(0xFFFFFFFF);
  Color lightSecondaryContainer = Color(0xFFE8B8FF);
  Color lightOnSecondaryContainer = Color(0xFF2E0038);
  Color lightSecondaryFixedDim = Color(0xFFD19EFF);
  Color lightOnSecondaryFixed = Color(0xFF2E0038);

  // Tertiary Colors - Complementary accent
  Color lightTertiary = Color(0xFF4A6741);
  Color lightOnTertiary = Color(0xFFFFFFFF);
  Color lightTertiaryContainer = Color(0xFFCBEDBE);
  Color lightOnTertiaryContainer = Color(0xFF072100);
  Color lightTertiaryFixedDim = Color(0xFFAFD1A3);
  Color lightOnTertiaryFixedVariant = Color(0xFF334F2A);

  // Error Colors
  Color lightError = Color(0xFFBA1A1A);
  Color lightOnError = Color(0xFFFFFFFF);
  Color lightErrorContainer = Color(0xFFFFDAD6);
  Color lightOnErrorContainer = Color(0xFF410002);

  // Surface Colors
  Color lightSurface = Color(0xFFF5FDF7);
  Color lightOnSurface = Color(0xFF191C19);
  Color lightOnSurfaceVariant = Color(0xFF414941);
  Color lightSurfaceContainerLowest = Color(0xFFFFFFFF);
  Color lightSurfaceContainerLow = Color(0xFFEFF7F0);
  Color lightSurfaceContainer = Color(0xFFE9F1EA);
  Color lightSurfaceContainerHigh = Color(0xFFE3EBE5);
  Color lightSurfaceContainerHighest = Color(0xFFDDE5DF);
  Color lightSurfaceDim = Color(0xFFD5DDD7);
  Color lightSurfaceBright = Color(0xFFF5FDF7);

  // Outline Colors
  Color lightOutline = Color(0xFF717971);
  Color lightOutlineVariant = Color(0xFFC1C9C1);

  // Inverse Colors
  Color lightInverseSurface = Color(0xFF2E312E);
  Color lightOnInverseSurface = Color(0xFFEFF1EF);

  // Shadow & Scrim
  Color lightShadow = Color(0xFF000000);
  Color lightScrim = Color(0xFF000000);

  // ==========================================================================
  // DARK THEME COLORS
  // ==========================================================================

  // Primary Colors - Based on #36B77F (Green)
  Color darkPrimary = Color(0xFF9CE8B8);
  Color darkOnPrimary = Color(0xFF003826);
  Color darkPrimaryContainer = Color(0xFF1A7F52);
  Color darkOnPrimaryContainer = Color(0xFFB8F5D1);
  Color darkPrimaryFixedDim = Color(0xFF9CE8B8);
  Color darkOnPrimaryFixedVariant = Color(0xFF1A7F52);
  Color darkInversePrimary = Color(0xFF36B77F);
  Color darkSurfaceTint = Color(0xFF9CE8B8);

  // Secondary Colors - Based on #7A2299 (Purple)
  Color darkSecondary = Color(0xFFD19EFF);
  Color darkOnSecondary = Color(0xFF44005C);
  Color darkSecondaryContainer = Color(0xFF5E1A7A);
  Color darkOnSecondaryContainer = Color(0xFFE8B8FF);
  Color darkSecondaryFixedDim = Color(0xFFD19EFF);

  // Tertiary Colors - Complementary accent
  Color darkTertiary = Color(0xFFAFD1A3);
  Color darkOnTertiary = Color(0xFF1D3715);
  Color darkTertiaryContainer = Color(0xFF334F2A);
  Color darkOnTertiaryContainer = Color(0xFFCBEDBE);
  Color darkTertiaryFixedDim = Color(0xFFAFD1A3);
  Color darkOnTertiaryFixedVariant = Color(0xFF334F2A);

  // Error Colors
  Color darkError = Color(0xFFFFB4AB);
  Color darkOnError = Color(0xFF690005);
  Color darkErrorContainer = Color(0xFF93000A);
  Color darkOnErrorContainer = Color(0xFFFFDAD6);

  // Surface Colors
  Color darkSurface = Color(0xFF101211);
  Color darkOnSurface = Color(0xFFDDE5DF);
  Color darkOnSurfaceVariant = Color(0xFFC1C9C1);
  Color darkSurfaceContainerLowest = Color(0xFF0B0D0C);
  Color darkSurfaceContainerLow = Color(0xFF191C19);
  Color darkSurfaceContainer = Color(0xFF1D201D);
  Color darkSurfaceContainerHigh = Color(0xFF272B27);
  Color darkSurfaceContainerHighest = Color(0xFF323532);
  Color darkSurfaceDim = Color(0xFF101211);
  Color darkSurfaceBright = Color(0xFF363936);

  // Outline Colors
  Color darkOutline = Color(0xFF8B938B);
  Color darkOutlineVariant = Color(0xFF414941);

  // Inverse Colors
  Color darkInverseSurface = Color(0xFFDDE5DF);
  Color darkOnInverseSurface = Color(0xFF2E312E);

  // Shadow & Scrim
  Color darkShadow = Color(0xFF000000);
  Color darkScrim = Color(0xFF000000);

  // ==========================================================================
  // COMMON COLORS
  // ==========================================================================
  Color transparent = Colors.transparent;
  Color get white => lightOnPrimary;

  // ==========================================================================
  // ONBOARDING ILLUSTRATIONS CONSTANTS
  // ==========================================================================

  // Container dimensions
  static const double _onboardingIllustrationSize = 280.0;
  static const double _onboardingBackgroundSize = 200.0;

  // Icon sizes
  static const double _onboardingMainIconSize = 80.0;
  static const double _onboardingSecondaryIconSize = 32.0;
  static const double _onboardingTertiaryIconSize = 28.0;
  static const double _onboardingSmallIconSize = 24.0;
  static const double _onboardingChefHatIconSize = 40.0;

  // Positioning values
  static const double _onboardingIconPosition60 = 60.0;
  static const double _onboardingIconPosition70 = 70.0;
  static const double _onboardingIconPosition80 = 80.0;

  // Onboarding illustration dimensions and positions
  static const double _onboardingIllustrationWidth = 300.0;
  static const double _onboardingIllustrationHeight = 250.0;
  static const double _onboardingIllustrationTopMargin = 80.0;
  static const double _onboardingIllustrationBottomMargin = 40.0;

  // Onboarding animation durations and delays
  static const int _onboardingAnimationDurationMs = 800;
  static const int _onboardingAnimationDelayMs = 200;
  static const int _onboardingPageTransitionDurationMs = 300;

  // Onboarding animation values
  static const double _onboardingAnimationScaleStart = 0.8;
  static const double _onboardingAnimationScaleEnd = 1.0;
  static const double _onboardingAnimationSlideStart = 50.0;
  static const double _onboardingAnimationSlideEnd = 0.0;
  static const double _onboardingAnimationRotationStart = -0.1;
  static const double _onboardingAnimationRotationEnd = 0.0;

  // Onboarding text sizes
  static const double _onboardingTitleFontSize = 28.0;
  static const double _onboardingSubtitleFontSize = 16.0;
  static const double _onboardingDescriptionFontSize = 14.0;

  // Container dimensions getters
  double get onboardingIllustrationSize => _onboardingIllustrationSize;
  double get onboardingBackgroundSize => _onboardingBackgroundSize;

  // Icon sizes getters
  double get onboardingMainIconSize => _onboardingMainIconSize;
  double get onboardingSecondaryIconSize => _onboardingSecondaryIconSize;
  double get onboardingTertiaryIconSize => _onboardingTertiaryIconSize;
  double get onboardingSmallIconSize => _onboardingSmallIconSize;
  double get onboardingChefHatIconSize => _onboardingChefHatIconSize;

  // Positioning values getters
  double get onboardingIconPosition60 => _onboardingIconPosition60;
  double get onboardingIconPosition70 => _onboardingIconPosition70;
  double get onboardingIconPosition80 => _onboardingIconPosition80;

  // Onboarding getters
  double get onboardingIllustrationWidth => _onboardingIllustrationWidth;
  double get onboardingIllustrationHeight => _onboardingIllustrationHeight;
  double get onboardingIllustrationTopMargin =>
      _onboardingIllustrationTopMargin;
  double get onboardingIllustrationBottomMargin =>
      _onboardingIllustrationBottomMargin;
  int get onboardingAnimationDurationMs => _onboardingAnimationDurationMs;
  int get onboardingAnimationDelayMs => _onboardingAnimationDelayMs;
  int get onboardingPageTransitionDurationMs =>
      _onboardingPageTransitionDurationMs;
  double get onboardingAnimationScaleStart => _onboardingAnimationScaleStart;
  double get onboardingAnimationScaleEnd => _onboardingAnimationScaleEnd;
  double get onboardingAnimationSlideStart => _onboardingAnimationSlideStart;
  double get onboardingAnimationSlideEnd => _onboardingAnimationSlideEnd;
  double get onboardingAnimationRotationStart =>
      _onboardingAnimationRotationStart;
  double get onboardingAnimationRotationEnd => _onboardingAnimationRotationEnd;
  double get onboardingTitleFontSize => _onboardingTitleFontSize;
  double get onboardingSubtitleFontSize => _onboardingSubtitleFontSize;
  double get onboardingDescriptionFontSize => _onboardingDescriptionFontSize;

  // Animation durations (in milliseconds)
  int animationDurationFast = 400;
  int animationDurationMedium = 600;
  int animationDurationSlow = 800;
  int animationDurationVerySlow = 1000;
  int animationDurationExtraSlow = 1500;
  int animationDurationUltraSlow = 2000;
  int animationDurationMega = 2500;
  int animationDurationGiga = 3000;
  int animationDurationTera = 4000;
  int animationDurationPeta = 8000;

  // Animation delays (in milliseconds)
  int animationDelayShort = 200;
  int animationDelayMedium = 300;
  int animationDelayLong = 400;
  int animationDelayExtraLong = 500;
  int animationDelayVeryLong = 700;
  int animationDelayUltraLong = 800;
  int animationDelayMega = 900;
  int animationDelayGiga = 1100;
  int animationDelayTera = 1200;

  // Animation scale values
  double animationScaleSmall = 0.2;
  double animationScaleMedium = 0.3;
  double animationScaleLarge = 0.5;
  double animationScaleExtraLarge = 0.8;
  double animationScaleNormal = 1.0;
  double animationScaleSlightlyLarge = 1.1;
  double animationScaleModeratelyLarge = 1.15;
  double animationScaleLarger = 1.2;
  double animationScaleVeryLarge = 1.3;

  // Animation slide values
  double animationSlideSmall = 0.02;
  double animationSlideNormal = 0.03;
  double animationSlideMedium = 0.1;
  double animationSlideLarge = 0.3;
  double animationSlideExtraLarge = 0.5;
  double animationSlideHuge = 0.8;

  // Animation rotation values
  double animationRotationSmall = 0.05;
  double animationRotationMedium = 0.1;
  double animationRotationFull = 6.28; // 2π radianos
  double animationRotationStart = 0.0;

  // Durações específicas para animações complexas
  int animationDuration1800 = 1800;
  int animationDuration2200 = 2200;
  int animationDuration3600 = 3600;

  // Alpha values for animations
  double animationAlphaVeryLight = 0.05;
  double animationAlphaLight = 0.1;
  double animationAlphaMedium = 0.3;
  double animationAlphaHeavy = 0.4;
  double animationAlphaVeryHeavy = 0.6;
  double animationAlphaStrong = 0.7;
  double animationAlphaVeryStrong = 0.8;

  // Text sizes for onboarding
  double onboardingFreeTextSize = 10.0;

  // Onboarding page item constants
  double onboardingIllustrationMaxSize = 300.0;
  int onboardingIllustrationFlex = 3;
  String onboardingFontFamily = 'SanFranciscoPro';
  double onboardingDescriptionLineHeight = 1.5;

  // Page indicator constants
  static const int _pageIndicatorAnimationDuration = 300;
  static const double _pageIndicatorActiveWidth = 24.0;
  static const double _pageIndicatorInactiveWidth = 8.0;
  static const double _pageIndicatorHeight = 8.0;

  // Primary button constants
  static const double _primaryButtonHeight = 56.0;
  static const double _primaryButtonElevation = 0.0;
  static const double _primaryButtonProgressSize = 20.0;
  static const double _primaryButtonProgressStrokeWidth = 2.0;
  static const double _primaryButtonIconSize = 18.0;
  static const double _primaryButtonIconSpacing = 8.0;
  static const double _primaryButtonFontSize = 16.0;
  static const double _primaryButtonLetterSpacing = 0.5;
  static const double _primaryButtonDisabledAlpha = 0.6;

  // Page indicator getters
  int get pageIndicatorAnimationDuration => _pageIndicatorAnimationDuration;
  double get pageIndicatorActiveWidth => _pageIndicatorActiveWidth;
  double get pageIndicatorInactiveWidth => _pageIndicatorInactiveWidth;
  double get pageIndicatorHeight => _pageIndicatorHeight;

  // Primary button getters
  double get primaryButtonHeight => _primaryButtonHeight;
  double get primaryButtonElevation => _primaryButtonElevation;
  double get primaryButtonProgressSize => _primaryButtonProgressSize;
  double get primaryButtonProgressStrokeWidth =>
      _primaryButtonProgressStrokeWidth;
  double get primaryButtonIconSize => _primaryButtonIconSize;
  double get primaryButtonIconSpacing => _primaryButtonIconSpacing;
  double get primaryButtonFontSize => _primaryButtonFontSize;
  double get primaryButtonLetterSpacing => _primaryButtonLetterSpacing;
  double get primaryButtonDisabledAlpha => _primaryButtonDisabledAlpha;

  // Text field constants
  static const double _textFieldHeight = 56.0;
  static const double _textFieldBorderRadius = 12.0;
  static const double _textFieldBorderWidth = 1.0;
  static const double _textFieldFontSize = 16.0;
  static const double _textFieldIconSize = 20.0;
  static const double _textFieldContentPadding = 16.0;
  static const double _textFieldErrorFontSize = 12.0;
  double textFieldLabelFontSize = 12.0;
  FontWeight textFieldLabelFontWeight = FontWeight.w600;
  double textFieldLabelLetterSpacing = 0.5;
  String textFieldFontFamily = 'SanFranciscoPro';
  double textFieldFocusedBorderWidth = 2.0;
  double textFieldErrorBorderWidth = 1.0;

  // Social login button constants
  static const double _socialButtonHeight = 48.0;
  static const double _socialButtonBorderRadius = 24.0;
  static const double _socialButtonIconSize = 20.0;
  static const double _socialButtonFontSize = 14.0;
  static const FontWeight _socialButtonFontWeight = FontWeight.w500;
  static const double _socialButtonBorderWidth = 1.0;
  double socialLoginButtonSize = 56.0;
  double socialLoginButtonIconSize = 24.0;
  double socialLoginButtonShadowAlphaLight = 0.3;
  double socialLoginButtonShadowAlphaDark = 0.4;
  Color get socialLoginButtonIconColor => lightOnPrimary;

  // Text field getters
  double get textFieldHeight => _textFieldHeight;
  double get textFieldBorderRadius => _textFieldBorderRadius;
  double get textFieldBorderWidth => _textFieldBorderWidth;
  double get textFieldFontSize => _textFieldFontSize;
  double get textFieldIconSize => _textFieldIconSize;
  double get textFieldContentPadding => _textFieldContentPadding;
  double get textFieldErrorFontSize => _textFieldErrorFontSize;

  // Social login button getters
  double get socialButtonHeight => _socialButtonHeight;
  double get socialButtonBorderRadius => _socialButtonBorderRadius;
  double get socialButtonIconSize => _socialButtonIconSize;
  double get socialButtonFontSize => _socialButtonFontSize;
  FontWeight get socialButtonFontWeight => _socialButtonFontWeight;
  double get socialButtonBorderWidth => _socialButtonBorderWidth;

  // Cart floating button constants
  static const double _cartFloatingButtonSize = 56.0;
  static const double _cartFloatingButtonBadgeSize = 20.0;
  static const double _cartFloatingButtonBadgeFontSize = 10.0;
  static const FontWeight _cartFloatingButtonBadgeFontWeight = FontWeight.bold;
  static const double _cartFloatingButtonIconSize = 24.0;
  static const double _cartFloatingButtonElevation = 6.0;
  static const double _cartFloatingButtonItemCountFontSize = 12.0;
  static const FontWeight _cartFloatingButtonItemCountFontWeight =
      FontWeight.w500;
  static const double _cartFloatingButtonTotalFontSize = 14.0;
  static const FontWeight _cartFloatingButtonTotalFontWeight = FontWeight.bold;
  static const String _cartFloatingButtonFontFamily = 'SanFranciscoPro';

  // Category chip constants
  static const double _categoryChipHeight = 40.0;
  static const double _categoryChipBorderRadius = 20.0;
  static const int _categoryChipAnimationDuration = 200;
  static const double _categoryChipFontSize = 14.0;
  static const FontWeight _categoryChipSelectedFontWeight = FontWeight.bold;
  static const FontWeight _categoryChipUnselectedFontWeight = FontWeight.w500;
  static const String _categoryChipFontFamily = 'SanFranciscoPro';
  static const double _categoryChipPaddingHorizontal = 16.0;
  static const double _categoryChipPaddingVertical = 8.0;
  static const double _categoryChipSpacing = 8.0;

  // Cart floating button getters
  double get cartFloatingButtonSize => _cartFloatingButtonSize;
  double get cartFloatingButtonBadgeSize => _cartFloatingButtonBadgeSize;
  double get cartFloatingButtonBadgeFontSize =>
      _cartFloatingButtonBadgeFontSize;
  FontWeight get cartFloatingButtonBadgeFontWeight =>
      _cartFloatingButtonBadgeFontWeight;
  double get cartFloatingButtonIconSize => _cartFloatingButtonIconSize;
  double get cartFloatingButtonElevation => _cartFloatingButtonElevation;
  double get cartFloatingButtonItemCountFontSize =>
      _cartFloatingButtonItemCountFontSize;
  FontWeight get cartFloatingButtonItemCountFontWeight =>
      _cartFloatingButtonItemCountFontWeight;
  double get cartFloatingButtonTotalFontSize =>
      _cartFloatingButtonTotalFontSize;
  FontWeight get cartFloatingButtonTotalFontWeight =>
      _cartFloatingButtonTotalFontWeight;
  String get cartFloatingButtonFontFamily => _cartFloatingButtonFontFamily;

  // Category chip getters
  double get categoryChipHeight => _categoryChipHeight;
  double get categoryChipBorderRadius => _categoryChipBorderRadius;
  int get categoryChipAnimationDuration => _categoryChipAnimationDuration;
  double get categoryChipFontSize => _categoryChipFontSize;
  FontWeight get categoryChipSelectedFontWeight =>
      _categoryChipSelectedFontWeight;
  FontWeight get categoryChipUnselectedFontWeight =>
      _categoryChipUnselectedFontWeight;
  String get categoryChipFontFamily => _categoryChipFontFamily;
  double get categoryChipPaddingHorizontal => _categoryChipPaddingHorizontal;
  double get categoryChipPaddingVertical => _categoryChipPaddingVertical;
  double get categoryChipSpacing => _categoryChipSpacing;

  // Product card constants
  static const double _productCardElevation = 4.0;
  static const double _productCardBorderRadius = 12.0;
  static const double _productCardRatingBorderRadius = 8.0;
  static const double _productCardQuantityBorderRadius = 20.0;
  static const double _productCardRatingPositionTop = 8.0;
  static const double _productCardRatingPositionRight = 8.0;
  static const double _productCardRatingPaddingHorizontal = 6.0;
  static const double _productCardRatingPaddingVertical = 2.0;
  static const double _productCardContentPadding = 4.0;
  static const double _productCardQuantityPadding = 4.0;
  static const double _productCardQuantityPaddingHorizontal = 8.0;
  static const double _productCardQuantityPaddingVertical = 4.0;
  static const double _productCardAddButtonPadding = 6.0;
  static const double _productCardSpacing2 = 2.0;
  static const double _productCardSpacing4 = 4.0;
  static const double _productCardFallbackIconSize = 40.0;
  static const double _productCardRatingIconSize = 12.0;
  static const double _productCardTimeIconSize = 12.0;
  static const double _productCardQuantityIconSize = 16.0;
  static const double _productCardRatingFontSize = 10.0;
  static const double _productCardNameFontSize = 14.0;
  static const double _productCardRestaurantFontSize = 12.0;
  static const double _productCardTimeFontSize = 12.0;
  static const double _productCardPriceFontSize = 16.0;
  static const double _productCardQuantityFontSize = 12.0;
  static const FontWeight _productCardNameFontWeight = FontWeight.bold;
  static const FontWeight _productCardPriceFontWeight = FontWeight.bold;
  static const FontWeight _productCardQuantityFontWeight = FontWeight.bold;
  static const int _productCardImageFlex = 3;
  static const int _productCardContentFlex = 2;

  // Product card getters
  double get productCardElevation => _productCardElevation;
  double get productCardBorderRadius => _productCardBorderRadius;
  double get productCardRatingBorderRadius => _productCardRatingBorderRadius;
  double get productCardQuantityBorderRadius =>
      _productCardQuantityBorderRadius;
  double get productCardRatingPositionTop => _productCardRatingPositionTop;
  double get productCardRatingPositionRight => _productCardRatingPositionRight;
  double get productCardRatingPaddingHorizontal =>
      _productCardRatingPaddingHorizontal;
  double get productCardRatingPaddingVertical =>
      _productCardRatingPaddingVertical;
  double get productCardContentPadding => _productCardContentPadding;
  double get productCardQuantityPadding => _productCardQuantityPadding;
  double get productCardQuantityPaddingHorizontal =>
      _productCardQuantityPaddingHorizontal;
  double get productCardQuantityPaddingVertical =>
      _productCardQuantityPaddingVertical;
  double get productCardAddButtonPadding => _productCardAddButtonPadding;
  double get productCardSpacing2 => _productCardSpacing2;
  double get productCardSpacing4 => _productCardSpacing4;
  double get productCardFallbackIconSize => _productCardFallbackIconSize;
  double get productCardRatingIconSize => _productCardRatingIconSize;
  double get productCardTimeIconSize => _productCardTimeIconSize;
  double get productCardQuantityIconSize => _productCardQuantityIconSize;
  double get productCardRatingFontSize => _productCardRatingFontSize;
  double get productCardNameFontSize => _productCardNameFontSize;
  double get productCardRestaurantFontSize => _productCardRestaurantFontSize;
  double get productCardTimeFontSize => _productCardTimeFontSize;
  double get productCardPriceFontSize => _productCardPriceFontSize;
  double get productCardQuantityFontSize => _productCardQuantityFontSize;
  FontWeight get productCardNameFontWeight => _productCardNameFontWeight;
  FontWeight get productCardPriceFontWeight => _productCardPriceFontWeight;
  FontWeight get productCardQuantityFontWeight =>
      _productCardQuantityFontWeight;
  int get productCardImageFlex => _productCardImageFlex;
  int get productCardContentFlex => _productCardContentFlex;
  Color get productCardFallbackBackgroundColor => getColorByTheme(
    isDark: false,
    lightColor: Color(0xFFEEEEEE),
    darkColor: Color(0xFF424242),
  );
  Color get productCardFallbackIconColor => getColorByTheme(
    isDark: false,
    lightColor: Color(0xFF9E9E9E),
    darkColor: Color(0xFF757575),
  );
  Color get productCardRatingBackgroundColor => getColorByTheme(
    isDark: false,
    lightColor: Color(0x8A000000),
    darkColor: Color(0x8AFFFFFF),
  );
  Color get productCardRatingIconColor => getColorByTheme(
    isDark: false,
    lightColor: Color(0xFFFFC107),
    darkColor: Color(0xFFFFC107),
  );
  Color get productCardRatingTextColor => getColorByTheme(
    isDark: false,
    lightColor: Colors.white,
    darkColor: Colors.black,
  );
  Color get productCardRestaurantTextColor => getColorByTheme(
    isDark: false,
    lightColor: Color(0xFF757575),
    darkColor: Color(0xFFBDBDBD),
  );
  Color get productCardTimeIconColor => getColorByTheme(
    isDark: false,
    lightColor: Color(0xFF757575),
    darkColor: Color(0xFFBDBDBD),
  );
  Color get productCardTimeTextColor => getColorByTheme(
    isDark: false,
    lightColor: Color(0xFF757575),
    darkColor: Color(0xFFBDBDBD),
  );
  Color get productCardPriceColor => getColorByTheme(
    isDark: false,
    lightColor: Color(0xFF4CAF50),
    darkColor: Color(0xFF81C784),
  );
  Color get productCardQuantityBackgroundColor => getColorByTheme(
    isDark: false,
    lightColor: Color(0xFFFF9800),
    darkColor: Color(0xFFFFB74D),
  );
  Color get productCardQuantityTextColor => Colors.white;
  Color get productCardQuantityIconColor => Colors.white;
  double productCardMaxWidth = 280.0;
  double productCardDesktopAspectRatio = 0.9;
  double productCardMobileAspectRatio = 1.2;
  double productCardDesktopBreakpoint = 600.0;
  double productCardMinWidth = 200.0;
  double productCardDesktopWidthRatio = 0.22;

  // Search Bar Constants
  static const double _searchBarFontSize = 14.0;
  static const double _searchBarIconSize = 20.0;
  static const String _searchBarFontFamily = 'SanFranciscoPro';

  // Search bar getters
  double get searchBarFontSize => _searchBarFontSize;
  double get searchBarIconSize => _searchBarIconSize;
  String get searchBarFontFamily => _searchBarFontFamily;

  // Restaurant card constants
  static const double _restaurantCardImageHeight = 160.0;
  static const double _restaurantCardIconSize = 50.0;
  static const double _restaurantCardStatusIconSize = 14.0;
  static const double _restaurantCardRatingIconSize = 14.0;
  static const double _restaurantCardTimeIconSize = 16.0;
  static const double _restaurantCardDeliveryIconSize = 16.0;
  static const double _restaurantCardStatusFontSize = 12.0;
  static const double _restaurantCardRatingFontSize = 12.0;
  static const double _restaurantCardNameFontSize = 18.0;
  static const double _restaurantCardDescriptionFontSize = 14.0;
  static const double _restaurantCardInfoFontSize = 12.0;
  static const double _restaurantCardMinOrderFontSize = 12.0;
  static const double _restaurantCardTagFontSize = 10.0;
  static const FontWeight _restaurantCardStatusFontWeight = FontWeight.w500;
  static const FontWeight _restaurantCardRatingFontWeight = FontWeight.w500;
  static const FontWeight _restaurantCardNameFontWeight = FontWeight.bold;
  static const FontWeight _restaurantCardTagFontWeight = FontWeight.w500;
  static const String _restaurantCardFontFamily = 'SanFranciscoPro';

  // Restaurant card getters
  double get restaurantCardImageHeight => _restaurantCardImageHeight;
  double get restaurantCardIconSize => _restaurantCardIconSize;
  double get restaurantCardStatusIconSize => _restaurantCardStatusIconSize;
  double get restaurantCardRatingIconSize => _restaurantCardRatingIconSize;
  double get restaurantCardTimeIconSize => _restaurantCardTimeIconSize;
  double get restaurantCardDeliveryIconSize => _restaurantCardDeliveryIconSize;
  double get restaurantCardStatusFontSize => _restaurantCardStatusFontSize;
  double get restaurantCardRatingFontSize => _restaurantCardRatingFontSize;
  double get restaurantCardNameFontSize => _restaurantCardNameFontSize;
  double get restaurantCardDescriptionFontSize =>
      _restaurantCardDescriptionFontSize;
  double get restaurantCardInfoFontSize => _restaurantCardInfoFontSize;
  double get restaurantCardMinOrderFontSize => _restaurantCardMinOrderFontSize;
  double get restaurantCardTagFontSize => _restaurantCardTagFontSize;
  FontWeight get restaurantCardStatusFontWeight =>
      _restaurantCardStatusFontWeight;
  FontWeight get restaurantCardRatingFontWeight =>
      _restaurantCardRatingFontWeight;
  FontWeight get restaurantCardNameFontWeight => _restaurantCardNameFontWeight;
  FontWeight get restaurantCardTagFontWeight => _restaurantCardTagFontWeight;
  String get restaurantCardFontFamily => _restaurantCardFontFamily;

  // Cart page constants
  static const double _cartEmptyIconSize = 80.0;
  static const double _cartEmptyTitleFontSize = 20.0;
  static const FontWeight _cartEmptyTitleFontWeight = FontWeight.w600;
  static const double _cartEmptySubtitleFontSize = 16.0;
  static const double _cartItemImageSize = 80.0;
  static const double _cartItemImageBorderRadius = 8.0;
  static const double _cartItemNameFontSize = 16.0;
  static const FontWeight _cartItemNameFontWeight = FontWeight.bold;
  static const double _cartItemRestaurantFontSize = 14.0;
  static const double _cartItemPriceFontSize = 16.0;
  static const FontWeight _cartItemPriceFontWeight = FontWeight.bold;
  static const double _cartItemInstructionsFontSize = 12.0;
  static const double _cartQuantityControlIconSize = 18.0;
  static const double _cartQuantityControlBorderRadius = 20.0;
  static const double _cartQuantityTextFontSize = 16.0;
  static const FontWeight _cartQuantityTextFontWeight = FontWeight.bold;
  static const double _cartTotalPriceFontSize = 14.0;
  static const FontWeight _cartTotalPriceFontWeight = FontWeight.bold;
  static const double _cartSummaryFontSize = 16.0;
  static const FontWeight _cartSummaryFontWeight = FontWeight.w500;
  static const double _cartTotalFontSize = 18.0;
  static const FontWeight _cartTotalFontWeight = FontWeight.bold;
  static const double _cartButtonFontSize = 16.0;
  static const FontWeight _cartButtonFontWeight = FontWeight.bold;
  static const double _cartButtonBorderRadius = 12.0;
  static const double _cartCardElevation = 2.0;
  static const double _cartCardBorderRadius = 12.0;
  static const double _cartSummaryBlurRadius = 10.0;
  static const double _cartConfirmationIconSize = 64.0;

  // Cart page getters
  double get cartEmptyIconSize => _cartEmptyIconSize;
  double get cartEmptyTitleFontSize => _cartEmptyTitleFontSize;
  FontWeight get cartEmptyTitleFontWeight => _cartEmptyTitleFontWeight;
  double get cartEmptySubtitleFontSize => _cartEmptySubtitleFontSize;
  double get cartItemImageSize => _cartItemImageSize;
  double get cartItemImageBorderRadius => _cartItemImageBorderRadius;
  double get cartItemNameFontSize => _cartItemNameFontSize;
  FontWeight get cartItemNameFontWeight => _cartItemNameFontWeight;
  double get cartItemRestaurantFontSize => _cartItemRestaurantFontSize;
  double get cartItemPriceFontSize => _cartItemPriceFontSize;
  FontWeight get cartItemPriceFontWeight => _cartItemPriceFontWeight;
  double get cartItemInstructionsFontSize => _cartItemInstructionsFontSize;
  double get cartQuantityControlIconSize => _cartQuantityControlIconSize;
  double get cartQuantityControlBorderRadius =>
      _cartQuantityControlBorderRadius;
  double get cartQuantityTextFontSize => _cartQuantityTextFontSize;
  FontWeight get cartQuantityTextFontWeight => _cartQuantityTextFontWeight;
  double get cartTotalPriceFontSize => _cartTotalPriceFontSize;
  FontWeight get cartTotalPriceFontWeight => _cartTotalPriceFontWeight;
  double get cartSummaryFontSize => _cartSummaryFontSize;
  FontWeight get cartSummaryFontWeight => _cartSummaryFontWeight;
  double get cartTotalFontSize => _cartTotalFontSize;
  FontWeight get cartTotalFontWeight => _cartTotalFontWeight;
  double get cartButtonFontSize => _cartButtonFontSize;
  FontWeight get cartButtonFontWeight => _cartButtonFontWeight;
  double get cartButtonBorderRadius => _cartButtonBorderRadius;
  double get cartCardElevation => _cartCardElevation;
  double get cartCardBorderRadius => _cartCardBorderRadius;
  double get cartSummaryBlurRadius => _cartSummaryBlurRadius;
  double get cartConfirmationIconSize => _cartConfirmationIconSize;

  // Restaurant detail page constants
  static const double _restaurantAppBarExpandedHeight = 250.0;
  static const double _restaurantImagePlaceholderIconSize = 80.0;
  static const double _restaurantStatusBorderRadius = 20.0;
  static const FontWeight _restaurantStatusFontWeight = FontWeight.bold;
  static const double _restaurantNameFontSize = 24.0;
  static const FontWeight _restaurantNameFontWeight = FontWeight.bold;
  static const double _restaurantRatingIconSize = 16.0;
  static const double _restaurantRatingBorderRadius = 20.0;
  static const FontWeight _restaurantRatingFontWeight = FontWeight.bold;
  static const double _restaurantDescriptionFontSize = 16.0;
  static const double _restaurantInfoIconSize = 20.0;
  static const double _restaurantInfoLabelFontSize = 12.0;
  static const double _restaurantInfoValueFontSize = 12.0;
  static const FontWeight _restaurantInfoValueFontWeight = FontWeight.bold;
  static const double _restaurantScheduleIconSize = 16.0;
  static const double _restaurantScheduleFontSize = 14.0;
  static const double _restaurantTagBorderRadius = 20.0;
  static const FontWeight _restaurantTagFontWeight = FontWeight.w500;
  static const double _restaurantMenuTitleFontSize = 20.0;
  static const FontWeight _restaurantMenuTitleFontWeight = FontWeight.bold;
  static const double _restaurantErrorIconSize = 48.0;
  static const double _restaurantErrorTextFontSize = 16.0;
  static const double _restaurantEmptyIconSize = 48.0;
  static const double _restaurantEmptyTextFontSize = 16.0;
  static const int _restaurantProductGridCrossAxisCount = 2;
  static const double _restaurantProductGridAspectRatio = 0.75;
  static const double _restaurantProductGridSpacing = 16.0;

  // Restaurant detail page getters
  double get restaurantAppBarExpandedHeight => _restaurantAppBarExpandedHeight;
  double get restaurantImagePlaceholderIconSize =>
      _restaurantImagePlaceholderIconSize;
  double get restaurantStatusBorderRadius => _restaurantStatusBorderRadius;
  FontWeight get restaurantStatusFontWeight => _restaurantStatusFontWeight;
  double get restaurantNameFontSize => _restaurantNameFontSize;
  FontWeight get restaurantNameFontWeight => _restaurantNameFontWeight;
  double get restaurantRatingIconSize => _restaurantRatingIconSize;
  double get restaurantRatingBorderRadius => _restaurantRatingBorderRadius;
  FontWeight get restaurantRatingFontWeight => _restaurantRatingFontWeight;
  double get restaurantDescriptionFontSize => _restaurantDescriptionFontSize;
  double get restaurantInfoIconSize => _restaurantInfoIconSize;
  double get restaurantInfoLabelFontSize => _restaurantInfoLabelFontSize;
  double get restaurantInfoValueFontSize => _restaurantInfoValueFontSize;
  FontWeight get restaurantInfoValueFontWeight =>
      _restaurantInfoValueFontWeight;
  double get restaurantScheduleIconSize => _restaurantScheduleIconSize;
  double get restaurantScheduleFontSize => _restaurantScheduleFontSize;
  double get restaurantTagBorderRadius => _restaurantTagBorderRadius;
  FontWeight get restaurantTagFontWeight => _restaurantTagFontWeight;
  double get restaurantMenuTitleFontSize => _restaurantMenuTitleFontSize;
  FontWeight get restaurantMenuTitleFontWeight =>
      _restaurantMenuTitleFontWeight;
  double get restaurantErrorIconSize => _restaurantErrorIconSize;
  double get restaurantErrorTextFontSize => _restaurantErrorTextFontSize;
  double get restaurantEmptyIconSize => _restaurantEmptyIconSize;
  double get restaurantEmptyTextFontSize => _restaurantEmptyTextFontSize;
  int get restaurantProductGridCrossAxisCount =>
      _restaurantProductGridCrossAxisCount;
  double get restaurantProductGridAspectRatio =>
      _restaurantProductGridAspectRatio;
  double get restaurantProductGridSpacing => _restaurantProductGridSpacing;

  // Home page constants
  static const double _homeErrorIconSize = 64.0;
  static const double _homeEmptyIconSize = 64.0;
  static const double _homeEmptyTextFontSize = 18.0;
  static const double _homeCategoryFilterHeight = 60.0;
  static const int _homeProductGridCrossAxisCount = 2;
  static const double _homeProductGridAspectRatio = 0.75;
  static const double _homeProductGridSpacing = 16.0;

  // Home page getters
  double get homeErrorIconSize => _homeErrorIconSize;
  double get homeEmptyIconSize => _homeEmptyIconSize;
  double get homeEmptyTextFontSize => _homeEmptyTextFontSize;
  double get homeCategoryFilterHeight => _homeCategoryFilterHeight;
  int get homeProductGridCrossAxisCount => _homeProductGridCrossAxisCount;
  double get homeProductGridAspectRatio => _homeProductGridAspectRatio;
  double get homeProductGridSpacing => _homeProductGridSpacing;
  Color restaurantCardStatusOpenColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: lightTertiary,
    darkColor: darkTertiary,
  );
  Color restaurantCardStatusClosedColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: lightError,
    darkColor: darkError,
  );
  Color restaurantCardStatusTextColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: lightOnTertiary,
    darkColor: darkOnTertiary,
  );
  Color restaurantCardRatingIconColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: Color(0xFFFFC107),
    darkColor: Color(0xFFFFC107),
  );
  Color restaurantCardRatingTextColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: lightOnPrimary,
    darkColor: darkOnPrimary,
  );

  // Page constants
  // Common page font sizes
  static const double _pageTitleFontSize = 32.0;
  static const double _pageSubtitleFontSize = 16.0;
  static const double _pageBodyFontSize = 14.0;
  static const double _pageSmallFontSize = 12.0;
  static const double _pageLargeFontSize = 18.0;
  static const double _pageExtraLargeFontSize = 20.0;
  static const double _pageHugeFontSize = 24.0;

  // Common page font weights
  static const FontWeight _pageTitleFontWeight = FontWeight.bold;
  static const FontWeight _pageSubtitleFontWeight = FontWeight.w500;
  static const FontWeight _pageBodyFontWeight = FontWeight.w600;

  // Common page icon sizes
  static const double _pageSmallIconSize = 16.0;
  static const double _pageMediumIconSize = 20.0;
  static const double _pageLargeIconSize = 48.0;
  static const double _pageExtraLargeIconSize = 64.0;
  static const double _pageHugeIconSize = 80.0;

  // Page getters
  double get pageTitleFontSize => _pageTitleFontSize;
  double get pageSubtitleFontSize => _pageSubtitleFontSize;
  double get pageBodyFontSize => _pageBodyFontSize;
  double get pageSmallFontSize => _pageSmallFontSize;
  double get pageLargeFontSize => _pageLargeFontSize;
  double get pageExtraLargeFontSize => _pageExtraLargeFontSize;
  double get pageHugeFontSize => _pageHugeFontSize;
  FontWeight get pageTitleFontWeight => _pageTitleFontWeight;
  FontWeight get pageSubtitleFontWeight => _pageSubtitleFontWeight;
  FontWeight get pageBodyFontWeight => _pageBodyFontWeight;
  double get pageSmallIconSize => _pageSmallIconSize;
  double get pageMediumIconSize => _pageMediumIconSize;
  double get pageLargeIconSize => _pageLargeIconSize;
  double get pageExtraLargeIconSize => _pageExtraLargeIconSize;
  double get pageHugeIconSize => _pageHugeIconSize;

  // Page color getters
  Color pageBackgroundColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: lightSurfaceContainerLow,
    darkColor: darkSurfaceContainerLow,
  );
  Color pageAppBarBackgroundColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: lightSurface,
    darkColor: darkSurface,
  );
  Color pageAppBarForegroundColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: lightOnSurface,
    darkColor: darkOnSurface,
  );
  Color pageErrorColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: lightError,
    darkColor: darkError,
  );
  Color pageSuccessColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: lightTertiary,
    darkColor: darkTertiary,
  );
  Color pageWarningColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: Color(0xFFFF9800),
    darkColor: Color(0xFFFFB74D),
  );
  Color pageTextPrimaryColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: lightOnSurface,
    darkColor: darkOnSurface,
  );
  Color pageTextSecondaryColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: lightOnSurfaceVariant,
    darkColor: darkOnSurfaceVariant,
  );
  Color pageTextDisabledColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: lightOnSurfaceVariant.withValues(alpha: 0.6),
    darkColor: darkOnSurfaceVariant.withValues(alpha: 0.6),
  );
  Color pageIconColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: lightOnSurfaceVariant,
    darkColor: darkOnSurfaceVariant,
  );
  Color pageIconDisabledColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: lightOnSurfaceVariant.withValues(alpha: 0.4),
    darkColor: darkOnSurfaceVariant.withValues(alpha: 0.4),
  );
  Color pageButtonPrimaryColor(bool isDark) => getPrimaryColor(isDark);
  Color pageButtonPrimaryTextColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: lightOnPrimary,
    darkColor: darkOnPrimary,
  );
  Color pageButtonSecondaryColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: lightSecondary,
    darkColor: darkSecondary,
  );
  Color pageButtonSecondaryTextColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: lightOnSecondary,
    darkColor: darkOnSecondary,
  );
  Color pageCardBackgroundColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: lightSurface,
    darkColor: darkSurface,
  );
  Color pageCardShadowColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: lightShadow.withValues(alpha: 0.12),
    darkColor: darkShadow.withValues(alpha: 0.2),
  );
  Color pageTabIndicatorColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: lightOnPrimary,
    darkColor: darkOnPrimary,
  );
  Color pageTabSelectedColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: lightOnPrimary,
    darkColor: darkOnPrimary,
  );
  Color pageTabUnselectedColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: lightOnPrimary.withValues(alpha: 0.7),
    darkColor: darkOnPrimary.withValues(alpha: 0.7),
  );

  // Cart page theme-aware color getters
  Color cartBackgroundColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: Color(0xFFFAFAFA),
    darkColor: darkSurface,
  );
  Color cartAppBarBackgroundColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: lightSurface,
    darkColor: darkSurface,
  );
  Color cartAppBarTextColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: Color(0xFF1C1B1F),
    darkColor: darkOnSurface,
  );
  Color cartAppBarIconColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: Color(0xFF1C1B1F),
    darkColor: darkOnSurface,
  );
  Color cartClearButtonColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: lightError,
    darkColor: darkError,
  );
  Color cartEmptyIconColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: Color(0xFFBDBDBD),
    darkColor: darkOnSurfaceVariant,
  );
  Color cartEmptyTitleColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: Color(0xFF757575),
    darkColor: darkOnSurfaceVariant,
  );
  Color cartEmptySubtitleColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: Color(0xFF9E9E9E),
    darkColor: darkOnSurfaceVariant,
  );
  Color cartExploreButtonColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: Color(0xFFFF9800),
    darkColor: darkPrimary,
  );
  Color cartExploreButtonTextColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: lightOnPrimary,
    darkColor: darkOnPrimary,
  );
  Color cartItemCardColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: lightSurface,
    darkColor: darkSurface,
  );
  Color cartItemImagePlaceholderColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: Color(0xFFEEEEEE),
    darkColor: darkSurfaceContainerHigh,
  );
  Color cartItemImageIconColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: Color(0xFF9E9E9E),
    darkColor: darkOnSurfaceVariant,
  );
  Color cartItemNameColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: lightOnSurface,
    darkColor: darkOnSurface,
  );
  Color cartItemRestaurantColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: Color(0xFF757575),
    darkColor: darkOnSurfaceVariant,
  );
  Color cartItemPriceColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: Color(0xFF4CAF50),
    darkColor: darkTertiary,
  );
  Color cartItemInstructionsColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: Color(0xFF757575),
    darkColor: darkOnSurfaceVariant,
  );
  Color cartQuantityControlColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: Color(0xFFFF9800),
    darkColor: darkPrimary,
  );
  Color cartQuantityControlTextColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: lightOnPrimary,
    darkColor: darkOnPrimary,
  );
  Color cartTotalPriceColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: lightOnSurface,
    darkColor: darkOnSurface,
  );
  Color cartSummaryBackgroundColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: lightSurface,
    darkColor: darkSurface,
  );
  Color cartSummaryShadowColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: Color(0x1F000000),
    darkColor: darkShadow,
  );
  Color cartSummaryTextColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: Color(0xFF1C1B1F),
    darkColor: darkOnSurface,
  );
  Color cartTotalTextColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: lightOnSurface,
    darkColor: darkOnSurface,
  );
  Color cartTotalPriceTextColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: Color(0xFF4CAF50),
    darkColor: darkTertiary,
  );
  Color cartFinishButtonColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: Color(0xFFFF9800),
    darkColor: darkPrimary,
  );
  Color cartFinishButtonTextColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: lightOnPrimary,
    darkColor: darkOnPrimary,
  );
  Color cartConfirmationIconColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: const Color(0xFF4CAF50),
    darkColor: darkTertiary,
  );

  // Home page theme-aware color getters
  Color homeAppBarBackgroundColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: const Color(0xFFFF9800),
    darkColor: darkPrimary,
  );
  Color homeAppBarTextColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: lightOnPrimary,
    darkColor: darkOnPrimary,
  );
  Color homeSearchBarBackgroundColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: const Color(0xFFFF9800),
    darkColor: darkPrimary,
  );
  Color homeTabIndicatorColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: lightOnPrimary,
    darkColor: darkOnPrimary,
  );
  Color homeTabSelectedColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: lightOnPrimary,
    darkColor: darkOnPrimary,
  );
  Color homeTabUnselectedColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: lightOnPrimary.withValues(alpha: 0.7),
    darkColor: darkOnPrimary.withValues(alpha: 0.7),
  );
  Color homeErrorIconColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: lightError,
    darkColor: darkError,
  );
  Color homeEmptyIconColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: const Color(0xFF9E9E9E),
    darkColor: darkOnSurfaceVariant,
  );
  Color homeEmptyTextColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: const Color(0xFF9E9E9E),
    darkColor: darkOnSurfaceVariant,
  );

  // Restaurant detail page theme-aware color getters
  Color restaurantBackgroundColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: lightSurface,
    darkColor: darkSurface,
  );
  Color restaurantAppBarBackgroundColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: lightSurface,
    darkColor: darkSurface,
  );
  Color restaurantAppBarIconColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: lightOnSurface,
    darkColor: darkOnSurface,
  );
  Color restaurantImagePlaceholderBackgroundColor(bool isDark) =>
      getColorByTheme(
        isDark: isDark,
        lightColor: lightOnSurface.withValues(alpha: 0.3),
        darkColor: darkOnSurface.withValues(alpha: 0.3),
      );
  Color restaurantImagePlaceholderIconColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: lightOnSurface.withValues(alpha: 0.6),
    darkColor: darkOnSurface.withValues(alpha: 0.6),
  );
  Color restaurantStatusOpenColor(bool isDark) => const Color(0xFF4CAF50);
  Color restaurantStatusClosedColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: lightError,
    darkColor: darkError,
  );
  Color restaurantStatusTextColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: lightOnPrimary,
    darkColor: darkOnPrimary,
  );
  Color restaurantInfoBackgroundColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: lightSurface,
    darkColor: darkSurface,
  );
  Color restaurantNameColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: lightOnSurface,
    darkColor: darkOnSurface,
  );
  Color restaurantRatingBackgroundColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: lightPrimary,
    darkColor: darkPrimary,
  );
  Color restaurantRatingIconColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: lightOnPrimary,
    darkColor: darkOnPrimary,
  );
  Color restaurantRatingTextColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: lightOnPrimary,
    darkColor: darkOnPrimary,
  );
  Color restaurantDescriptionColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: lightOnSurface.withValues(alpha: 0.7),
    darkColor: darkOnSurface.withValues(alpha: 0.7),
  );
  Color restaurantInfoIconColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: lightPrimary,
    darkColor: darkPrimary,
  );
  Color restaurantInfoLabelColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: lightOnSurface.withValues(alpha: 0.7),
    darkColor: darkOnSurface.withValues(alpha: 0.7),
  );
  Color restaurantInfoValueColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: lightOnSurface,
    darkColor: darkOnSurface,
  );
  Color restaurantScheduleIconColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: lightOnSurface.withValues(alpha: 0.7),
    darkColor: darkOnSurface.withValues(alpha: 0.7),
  );
  Color restaurantScheduleTextColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: lightOnSurface.withValues(alpha: 0.7),
    darkColor: darkOnSurface.withValues(alpha: 0.7),
  );
  Color restaurantTagBackgroundColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: lightPrimary.withValues(alpha: 0.1),
    darkColor: darkPrimary.withValues(alpha: 0.1),
  );
  Color restaurantTagBorderColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: lightPrimary.withValues(alpha: 0.3),
    darkColor: darkPrimary.withValues(alpha: 0.3),
  );
  Color restaurantTagTextColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: lightPrimary,
    darkColor: darkPrimary,
  );
  Color restaurantMenuTitleColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: lightOnSurface,
    darkColor: darkOnSurface,
  );
  Color restaurantLoadingIndicatorColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: lightPrimary,
    darkColor: darkPrimary,
  );
  Color restaurantErrorIconColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: lightOnSurface.withValues(alpha: 0.4),
    darkColor: darkOnSurface.withValues(alpha: 0.4),
  );
  Color restaurantErrorTextColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: lightOnSurface.withValues(alpha: 0.7),
    darkColor: darkOnSurface.withValues(alpha: 0.7),
  );
  Color restaurantRetryButtonBackgroundColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: lightPrimary,
    darkColor: darkPrimary,
  );
  Color restaurantRetryButtonTextColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: lightOnPrimary,
    darkColor: darkOnPrimary,
  );
  Color restaurantEmptyIconColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: lightOnSurface.withValues(alpha: 0.4),
    darkColor: darkOnSurface.withValues(alpha: 0.4),
  );
  Color restaurantEmptyTextColor(bool isDark) => getColorByTheme(
    isDark: isDark,
    lightColor: lightOnSurface.withValues(alpha: 0.7),
    darkColor: darkOnSurface.withValues(alpha: 0.7),
  );

  // ==========================================================================
  // UTILITY METHODS
  // ==========================================================================

  /// Get color by theme mode
  Color getColorByTheme({
    required bool isDark,
    required Color lightColor,
    required Color darkColor,
  }) {
    return isDark ? darkColor : lightColor;
  }

  /// Get primary color by theme mode
  Color getPrimaryColor(bool isDark) {
    return isDark ? darkPrimary : lightPrimary;
  }

  /// Get surface color by theme mode
  Color getSurfaceColor(bool isDark) {
    return isDark ? darkSurface : lightSurface;
  }

  /// Get on surface color by theme mode
  Color getOnSurfaceColor(bool isDark) {
    return isDark ? darkOnSurface : lightOnSurface;
  }
}
