import '../imports/common_libs.dart';

class UIConstants {
  // ==========================================================================
  // THEME
  // ==========================================================================
  ThemeData get theme => customLightTheme;

  // ==========================================================================
  // SPACING - 8pt Grid System
  // ==========================================================================
   double spacing0 = 0.0;
   double spacing1 = 4.0;   // 8 * 0.5
   double spacing2 = 8.0;   // 8 * 1
   double spacing3 = 12.0;  // 8 * 1.5
   double spacing4 = 16.0;  // 8 * 2
   double spacing5 = 20.0;  // 8 * 2.5
   double spacing6 = 24.0;  // 8 * 3
   double spacing7 = 28.0;  // 8 * 3.5
   double spacing8 = 32.0;  // 8 * 4
   double spacing10 = 40.0; // 8 * 5
   double spacing12 = 48.0; // 8 * 6
   double spacing16 = 64.0; // 8 * 8
   double spacing20 = 80.0; // 8 * 10
   double spacing24 = 96.0; // 8 * 12

  // ==========================================================================
  // OPACITY SCALE
  // ==========================================================================
   double opacity10 = 0.1;
   double opacity20 = 0.2;
   double opacity30 = 0.3;
   double opacity40 = 0.4;
   double opacity50 = 0.5;
   double opacity60 = 0.6;
   double opacity70 = 0.7;
   double opacity80 = 0.8;
   double opacity90 = 0.9;

  // ==========================================================================
  // BORDER RADIUS
  // ==========================================================================
   double radius4 = 4.0;
   double radius8 = 8.0;
   double radius12 = 12.0;
   double radius16 = 16.0;
   double radius20 = 20.0;
   double radius24 = 24.0;
   double radiusFull = 50.0;

  // ==========================================================================
  // ELEVATION
  // ==========================================================================
   double elevation2 = 2.0;
   double elevation4 = 4.0;
   double elevation6 = 6.0;
   double elevation8 = 8.0;
   double elevation12 = 12.0;
   double elevation16 = 16.0;

  // ==========================================================================
  // BORDER WIDTH
  // ==========================================================================
   double borderWidth1 = 1.0;
   double borderWidth2 = 2.0;
   double borderWidth3 = 3.0;
   double borderWidth4 = 4.0;

  // ==========================================================================
  // COMPONENT CONSTANTS
  // ==========================================================================
  
  // Tooltip
   double tooltipMinHeight = 32.0;
   double tooltipPaddingHorizontal = 12.0;
   double tooltipPaddingVertical = 8.0;
   double tooltipMargin = 8.0;
   double tooltipVerticalOffset = 24.0;
   double tooltipFontSize = 12.0;
   double tooltipLetterSpacing = 0.4;
   int tooltipWaitDurationMs = 500;
   int tooltipShowDurationMs = 1500;

  // AppBar
   double appBarTitleSpacing = 16.0;
   double appBarToolbarHeight = 64.0;
   double appBarLeadingWidth = 56.0;
   double appBarIconSize = 24.0;
   double appBarActionsPadding = 8.0;
   double appBarTitleFontSize = 22.0;
   double appBarToolbarFontSize = 16.0;

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
   double onboardingIllustrationSize = 280.0;
   double onboardingBackgroundSize = 200.0;
  
  // Icon sizes
   double onboardingMainIconSize = 80.0;
   double onboardingSecondaryIconSize = 32.0;
   double onboardingTertiaryIconSize = 28.0;
   double onboardingSmallIconSize = 24.0;
   double onboardingChefHatIconSize = 40.0;
  
  // Positioning values
   double onboardingIconPosition60 = 60.0;
   double onboardingIconPosition70 = 70.0;
   double onboardingIconPosition80 = 80.0;
  
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
   double onboardingTitleFontSize = 28.0;
   double onboardingDescriptionFontSize = 16.0;

  // Onboarding page item constants
   double onboardingIllustrationMaxSize = 300.0;
   int onboardingIllustrationFlex = 3;
   String onboardingFontFamily = 'SanFranciscoPro';
   double onboardingDescriptionLineHeight = 1.5;

  // Page indicator constants
   int pageIndicatorAnimationDuration = 300;
   double pageIndicatorActiveWidth = 24.0;
   double pageIndicatorInactiveWidth = 8.0;
   double pageIndicatorHeight = 8.0;

  // Primary button constants
   double primaryButtonHeight = 56.0;
   double primaryButtonElevation = 0.0;
   double primaryButtonProgressSize = 20.0;
   double primaryButtonProgressStrokeWidth = 2.0;
   double primaryButtonIconSize = 18.0;
   double primaryButtonIconSpacing = 8.0;
   double primaryButtonFontSize = 16.0;
   double primaryButtonLetterSpacing = 0.5;
   double primaryButtonDisabledAlpha = 0.6;

  // Text field constants
   double textFieldLabelFontSize = 12.0;
   FontWeight textFieldLabelFontWeight = FontWeight.w600;
   double textFieldLabelLetterSpacing = 0.5;
   String textFieldFontFamily = 'SanFranciscoPro';
   double textFieldFocusedBorderWidth = 2.0;
   double textFieldErrorBorderWidth = 1.0;

  // Social login button constants
   double socialLoginButtonSize = 56.0;
   double socialLoginButtonIconSize = 24.0;
   double socialLoginButtonShadowAlphaLight = 0.3;
   double socialLoginButtonShadowAlphaDark = 0.4;
   Color get socialLoginButtonIconColor => lightOnPrimary;

  // Cart floating button constants
   double cartFloatingButtonBadgeFontSize = 10.0;
   FontWeight cartFloatingButtonBadgeFontWeight = FontWeight.bold;
   double cartFloatingButtonItemCountFontSize = 12.0;
   FontWeight cartFloatingButtonItemCountFontWeight = FontWeight.w500;
   double cartFloatingButtonTotalFontSize = 14.0;
   FontWeight cartFloatingButtonTotalFontWeight = FontWeight.bold;
   String cartFloatingButtonFontFamily = 'SanFranciscoPro';

  // Category chip constants
   int categoryChipAnimationDuration = 200;
   double categoryChipFontSize = 14.0;
   FontWeight categoryChipSelectedFontWeight = FontWeight.bold;
   FontWeight categoryChipUnselectedFontWeight = FontWeight.w500;
   String categoryChipFontFamily = 'SanFranciscoPro';

  // Product card constants
   double productCardElevation = 4.0;
   double productCardBorderRadius = 12.0;
   double productCardRatingBorderRadius = 8.0;
   double productCardQuantityBorderRadius = 20.0;
   double productCardRatingPositionTop = 8.0;
   double productCardRatingPositionRight = 8.0;
   double productCardRatingPaddingHorizontal = 6.0;
   double productCardRatingPaddingVertical = 2.0;
   double productCardContentPadding = 4.0;
   double productCardQuantityPadding = 4.0;
   double productCardQuantityPaddingHorizontal = 8.0;
   double productCardQuantityPaddingVertical = 4.0;
   double productCardAddButtonPadding = 6.0;
   double productCardSpacing2 = 2.0;
   double productCardSpacing4 = 4.0;
   double productCardFallbackIconSize = 40.0;
   double productCardRatingIconSize = 12.0;
   double productCardTimeIconSize = 12.0;
   double productCardQuantityIconSize = 16.0;
   double productCardRatingFontSize = 10.0;
   double productCardNameFontSize = 14.0;
   double productCardRestaurantFontSize = 12.0;
   double productCardTimeFontSize = 12.0;
   double productCardPriceFontSize = 16.0;
   double productCardQuantityFontSize = 12.0;
   FontWeight productCardNameFontWeight = FontWeight.bold;
   FontWeight productCardPriceFontWeight = FontWeight.bold;
   FontWeight productCardQuantityFontWeight = FontWeight.bold;
   int productCardImageFlex = 3;
   int productCardContentFlex = 2;
   Color get productCardFallbackBackgroundColor => getColorByTheme(isDark: false, lightColor: Color(0xFFEEEEEE), darkColor: Color(0xFF424242));
   Color get productCardFallbackIconColor => getColorByTheme(isDark: false, lightColor: Color(0xFF9E9E9E), darkColor: Color(0xFF757575));
   Color get productCardRatingBackgroundColor => getColorByTheme(isDark: false, lightColor: Color(0x8A000000), darkColor: Color(0x8AFFFFFF));
   Color get productCardRatingIconColor => getColorByTheme(isDark: false, lightColor: Color(0xFFFFC107), darkColor: Color(0xFFFFC107));
   Color get productCardRatingTextColor => getColorByTheme(isDark: false, lightColor: Colors.white, darkColor: Colors.black);
   Color get productCardRestaurantTextColor => getColorByTheme(isDark: false, lightColor: Color(0xFF757575), darkColor: Color(0xFFBDBDBD));
   Color get productCardTimeIconColor => getColorByTheme(isDark: false, lightColor: Color(0xFF757575), darkColor: Color(0xFFBDBDBD));
   Color get productCardTimeTextColor => getColorByTheme(isDark: false, lightColor: Color(0xFF757575), darkColor: Color(0xFFBDBDBD));
   Color get productCardPriceColor => getColorByTheme(isDark: false, lightColor: Color(0xFF4CAF50), darkColor: Color(0xFF81C784));
   Color get productCardQuantityBackgroundColor => getColorByTheme(isDark: false, lightColor: Color(0xFFFF9800), darkColor: Color(0xFFFFB74D));
   Color get productCardQuantityTextColor => Colors.white;
   Color get productCardQuantityIconColor => Colors.white;
   double productCardMaxWidth = 280.0;
   double productCardDesktopAspectRatio = 0.9;
   double productCardMobileAspectRatio = 1.2;
   double productCardDesktopBreakpoint = 600.0;
   double productCardMinWidth = 200.0;
   double productCardDesktopWidthRatio = 0.22;

  // Search Bar Constants
  static const double searchBarFontSize = 14.0;
  static const double searchBarIconSize = 20.0;
  static const String searchBarFontFamily = 'SanFranciscoPro';

  // Restaurant card constants
   static const double restaurantCardImageHeight = 160.0;
   static const double restaurantCardIconSize = 50.0;
   static const double restaurantCardStatusIconSize = 14.0;
   static const double restaurantCardRatingIconSize = 14.0;
   static const double restaurantCardTimeIconSize = 16.0;
   static const double restaurantCardDeliveryIconSize = 16.0;
   static const double restaurantCardStatusFontSize = 12.0;
   static const double restaurantCardRatingFontSize = 12.0;
   static const double restaurantCardNameFontSize = 18.0;
   static const double restaurantCardDescriptionFontSize = 14.0;
   static const double restaurantCardInfoFontSize = 12.0;
   static const double restaurantCardMinOrderFontSize = 12.0;
   static const double restaurantCardTagFontSize = 10.0;
   static const FontWeight restaurantCardStatusFontWeight = FontWeight.w500;
   static const FontWeight restaurantCardRatingFontWeight = FontWeight.w500;
   static const FontWeight restaurantCardNameFontWeight = FontWeight.bold;
   static const FontWeight restaurantCardTagFontWeight = FontWeight.w500;
   static const String restaurantCardFontFamily = 'SanFranciscoPro';

  // Cart page constants
  static const double cartEmptyIconSize = 80.0;
  static const double cartEmptyTitleFontSize = 20.0;
  static const FontWeight cartEmptyTitleFontWeight = FontWeight.w600;
  static const double cartEmptySubtitleFontSize = 16.0;
  static const double cartItemImageSize = 80.0;
  static const double cartItemImageBorderRadius = 8.0;
  static const double cartItemNameFontSize = 16.0;
  static const FontWeight cartItemNameFontWeight = FontWeight.bold;
  static const double cartItemRestaurantFontSize = 14.0;
  static const double cartItemPriceFontSize = 16.0;
  static const FontWeight cartItemPriceFontWeight = FontWeight.bold;
  static const double cartItemInstructionsFontSize = 12.0;
  static const double cartQuantityControlIconSize = 18.0;
  static const double cartQuantityControlBorderRadius = 20.0;
  static const double cartQuantityTextFontSize = 16.0;
  static const FontWeight cartQuantityTextFontWeight = FontWeight.bold;
  static const double cartTotalPriceFontSize = 14.0;
  static const FontWeight cartTotalPriceFontWeight = FontWeight.bold;
  static const double cartSummaryFontSize = 16.0;
  static const FontWeight cartSummaryFontWeight = FontWeight.w500;
  static const double cartTotalFontSize = 18.0;
  static const FontWeight cartTotalFontWeight = FontWeight.bold;
  static const double cartButtonFontSize = 16.0;
  static const FontWeight cartButtonFontWeight = FontWeight.bold;
  static const double cartButtonBorderRadius = 12.0;
  static const double cartCardElevation = 2.0;
  static const double cartCardBorderRadius = 12.0;
  static const double cartSummaryBlurRadius = 10.0;
  static const double cartConfirmationIconSize = 64.0;

  // Restaurant detail page constants
  static const double restaurantAppBarExpandedHeight = 250.0;
  static const double restaurantImagePlaceholderIconSize = 80.0;
  static const double restaurantStatusBorderRadius = 20.0;
  static const FontWeight restaurantStatusFontWeight = FontWeight.bold;
  static const double restaurantNameFontSize = 24.0;
  static const FontWeight restaurantNameFontWeight = FontWeight.bold;
  static const double restaurantRatingIconSize = 16.0;
  static const double restaurantRatingBorderRadius = 20.0;
  static const FontWeight restaurantRatingFontWeight = FontWeight.bold;
  static const double restaurantDescriptionFontSize = 16.0;
  static const double restaurantInfoIconSize = 20.0;
  static const double restaurantInfoLabelFontSize = 12.0;
  static const double restaurantInfoValueFontSize = 12.0;
  static const FontWeight restaurantInfoValueFontWeight = FontWeight.bold;
  static const double restaurantScheduleIconSize = 16.0;
  static const double restaurantScheduleFontSize = 14.0;
  static const double restaurantTagBorderRadius = 20.0;
  static const FontWeight restaurantTagFontWeight = FontWeight.w500;
  static const double restaurantMenuTitleFontSize = 20.0;
  static const FontWeight restaurantMenuTitleFontWeight = FontWeight.bold;
  static const double restaurantErrorIconSize = 48.0;
  static const double restaurantErrorTextFontSize = 16.0;
  static const double restaurantEmptyIconSize = 48.0;
  static const double restaurantEmptyTextFontSize = 16.0;
  static const int restaurantProductGridCrossAxisCount = 2;
  static const double restaurantProductGridAspectRatio = 0.75;
  static const double restaurantProductGridSpacing = 16.0;

  // Home page constants
  static const double homeErrorIconSize = 64.0;
  static const double homeEmptyIconSize = 64.0;
  static const double homeEmptyTextFontSize = 18.0;
  static const double homeCategoryFilterHeight = 60.0;
  static const int homeProductGridCrossAxisCount = 2;
  static const double homeProductGridAspectRatio = 0.75;
  static const double homeProductGridSpacing = 16.0;
   Color restaurantCardStatusOpenColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: lightTertiary, darkColor: darkTertiary);
   Color restaurantCardStatusClosedColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: lightError, darkColor: darkError);
   Color restaurantCardStatusTextColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: lightOnTertiary, darkColor: darkOnTertiary);
   Color restaurantCardRatingIconColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: Color(0xFFFFC107), darkColor: Color(0xFFFFC107));
   Color restaurantCardRatingTextColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: lightOnPrimary, darkColor: darkOnPrimary);

  // Page constants
  // Common page font sizes
   static const double pageTitleFontSize = 32.0;
   static const double pageSubtitleFontSize = 16.0;
   static const double pageBodyFontSize = 14.0;
   static const double pageSmallFontSize = 12.0;
   static const double pageLargeFontSize = 18.0;
   static const double pageExtraLargeFontSize = 20.0;
   static const double pageHugeFontSize = 24.0;
   
  // Common page font weights
   static const FontWeight pageTitleFontWeight = FontWeight.bold;
   static const FontWeight pageSubtitleFontWeight = FontWeight.w500;
   static const FontWeight pageBodyFontWeight = FontWeight.w600;
   
  // Common page icon sizes
   static const double pageSmallIconSize = 16.0;
   static const double pageMediumIconSize = 20.0;
   static const double pageLargeIconSize = 48.0;
   static const double pageExtraLargeIconSize = 64.0;
   static const double pageHugeIconSize = 80.0;
   
  // Page color getters
   Color pageBackgroundColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: lightSurfaceContainerLow, darkColor: darkSurfaceContainerLow);
   Color pageAppBarBackgroundColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: lightSurface, darkColor: darkSurface);
   Color pageAppBarForegroundColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: lightOnSurface, darkColor: darkOnSurface);
   Color pageErrorColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: lightError, darkColor: darkError);
   Color pageSuccessColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: lightTertiary, darkColor: darkTertiary);
   Color pageWarningColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: Color(0xFFFF9800), darkColor: Color(0xFFFFB74D));
   Color pageTextPrimaryColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: lightOnSurface, darkColor: darkOnSurface);
   Color pageTextSecondaryColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: lightOnSurfaceVariant, darkColor: darkOnSurfaceVariant);
   Color pageTextDisabledColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: lightOnSurfaceVariant.withValues(alpha: 0.6), darkColor: darkOnSurfaceVariant.withValues(alpha: 0.6));
   Color pageIconColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: lightOnSurfaceVariant, darkColor: darkOnSurfaceVariant);
   Color pageIconDisabledColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: lightOnSurfaceVariant.withValues(alpha: 0.4), darkColor: darkOnSurfaceVariant.withValues(alpha: 0.4));
   Color pageButtonPrimaryColor(bool isDark) => getPrimaryColor(isDark);
   Color pageButtonPrimaryTextColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: lightOnPrimary, darkColor: darkOnPrimary);
   Color pageButtonSecondaryColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: lightSecondary, darkColor: darkSecondary);
   Color pageButtonSecondaryTextColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: lightOnSecondary, darkColor: darkOnSecondary);
   Color pageCardBackgroundColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: lightSurface, darkColor: darkSurface);
   Color pageCardShadowColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: lightShadow.withValues(alpha: 0.12), darkColor: darkShadow.withValues(alpha: 0.2));
   Color pageTabIndicatorColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: lightOnPrimary, darkColor: darkOnPrimary);
   Color pageTabSelectedColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: lightOnPrimary, darkColor: darkOnPrimary);
   Color pageTabUnselectedColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: lightOnPrimary.withValues(alpha: 0.7), darkColor: darkOnPrimary.withValues(alpha: 0.7));

  // Cart page theme-aware color getters
   Color cartBackgroundColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: Color(0xFFFAFAFA), darkColor: darkSurface);
   Color cartAppBarBackgroundColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: lightSurface, darkColor: darkSurface);
   Color cartAppBarTextColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: Color(0xFF1C1B1F), darkColor: darkOnSurface);
   Color cartAppBarIconColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: Color(0xFF1C1B1F), darkColor: darkOnSurface);
   Color cartClearButtonColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: lightError, darkColor: darkError);
   Color cartEmptyIconColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: Color(0xFFBDBDBD), darkColor: darkOnSurfaceVariant);
   Color cartEmptyTitleColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: Color(0xFF757575), darkColor: darkOnSurfaceVariant);
   Color cartEmptySubtitleColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: Color(0xFF9E9E9E), darkColor: darkOnSurfaceVariant);
   Color cartExploreButtonColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: Color(0xFFFF9800), darkColor: darkPrimary);
   Color cartExploreButtonTextColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: lightOnPrimary, darkColor: darkOnPrimary);
   Color cartItemCardColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: lightSurface, darkColor: darkSurface);
   Color cartItemImagePlaceholderColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: Color(0xFFEEEEEE), darkColor: darkSurfaceContainerHigh);
   Color cartItemImageIconColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: Color(0xFF9E9E9E), darkColor: darkOnSurfaceVariant);
   Color cartItemNameColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: lightOnSurface, darkColor: darkOnSurface);
   Color cartItemRestaurantColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: Color(0xFF757575), darkColor: darkOnSurfaceVariant);
   Color cartItemPriceColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: Color(0xFF4CAF50), darkColor: darkTertiary);
   Color cartItemInstructionsColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: Color(0xFF757575), darkColor: darkOnSurfaceVariant);
   Color cartQuantityControlColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: Color(0xFFFF9800), darkColor: darkPrimary);
   Color cartQuantityControlTextColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: lightOnPrimary, darkColor: darkOnPrimary);
   Color cartTotalPriceColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: lightOnSurface, darkColor: darkOnSurface);
   Color cartSummaryBackgroundColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: lightSurface, darkColor: darkSurface);
   Color cartSummaryShadowColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: Color(0x1F000000), darkColor: darkShadow);
   Color cartSummaryTextColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: Color(0xFF1C1B1F), darkColor: darkOnSurface);
   Color cartTotalTextColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: lightOnSurface, darkColor: darkOnSurface);
   Color cartTotalPriceTextColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: Color(0xFF4CAF50), darkColor: darkTertiary);
   Color cartFinishButtonColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: Color(0xFFFF9800), darkColor: darkPrimary);
   Color cartFinishButtonTextColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: lightOnPrimary, darkColor: darkOnPrimary);
   Color cartConfirmationIconColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: const Color(0xFF4CAF50), darkColor: darkTertiary);

  // Home page theme-aware color getters
  Color homeAppBarBackgroundColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: const Color(0xFFFF9800), darkColor: darkPrimary);
  Color homeAppBarTextColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: lightOnPrimary, darkColor: darkOnPrimary);
  Color homeSearchBarBackgroundColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: const Color(0xFFFF9800), darkColor: darkPrimary);
  Color homeTabIndicatorColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: lightOnPrimary, darkColor: darkOnPrimary);
  Color homeTabSelectedColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: lightOnPrimary, darkColor: darkOnPrimary);
  Color homeTabUnselectedColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: lightOnPrimary.withValues(alpha: 0.7), darkColor: darkOnPrimary.withValues(alpha: 0.7));
  Color homeErrorIconColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: lightError, darkColor: darkError);
  Color homeEmptyIconColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: const Color(0xFF9E9E9E), darkColor: darkOnSurfaceVariant);
  Color homeEmptyTextColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: const Color(0xFF9E9E9E), darkColor: darkOnSurfaceVariant);

  // Restaurant detail page theme-aware color getters
  Color restaurantBackgroundColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: lightSurface, darkColor: darkSurface);
  Color restaurantAppBarBackgroundColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: lightSurface, darkColor: darkSurface);
  Color restaurantAppBarIconColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: lightOnSurface, darkColor: darkOnSurface);
  Color restaurantImagePlaceholderBackgroundColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: lightOnSurface.withValues(alpha: 0.3), darkColor: darkOnSurface.withValues(alpha: 0.3));
  Color restaurantImagePlaceholderIconColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: lightOnSurface.withValues(alpha: 0.6), darkColor: darkOnSurface.withValues(alpha: 0.6));
  Color restaurantStatusOpenColor(bool isDark) => const Color(0xFF4CAF50);
  Color restaurantStatusClosedColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: lightError, darkColor: darkError);
  Color restaurantStatusTextColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: lightOnPrimary, darkColor: darkOnPrimary);
  Color restaurantInfoBackgroundColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: lightSurface, darkColor: darkSurface);
  Color restaurantNameColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: lightOnSurface, darkColor: darkOnSurface);
  Color restaurantRatingBackgroundColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: lightPrimary, darkColor: darkPrimary);
  Color restaurantRatingIconColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: lightOnPrimary, darkColor: darkOnPrimary);
  Color restaurantRatingTextColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: lightOnPrimary, darkColor: darkOnPrimary);
  Color restaurantDescriptionColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: lightOnSurface.withValues(alpha: 0.7), darkColor: darkOnSurface.withValues(alpha: 0.7));
  Color restaurantInfoIconColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: lightPrimary, darkColor: darkPrimary);
  Color restaurantInfoLabelColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: lightOnSurface.withValues(alpha: 0.7), darkColor: darkOnSurface.withValues(alpha: 0.7));
  Color restaurantInfoValueColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: lightOnSurface, darkColor: darkOnSurface);
  Color restaurantScheduleIconColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: lightOnSurface.withValues(alpha: 0.7), darkColor: darkOnSurface.withValues(alpha: 0.7));
  Color restaurantScheduleTextColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: lightOnSurface.withValues(alpha: 0.7), darkColor: darkOnSurface.withValues(alpha: 0.7));
  Color restaurantTagBackgroundColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: lightPrimary.withValues(alpha: 0.1), darkColor: darkPrimary.withValues(alpha: 0.1));
  Color restaurantTagBorderColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: lightPrimary.withValues(alpha: 0.3), darkColor: darkPrimary.withValues(alpha: 0.3));
  Color restaurantTagTextColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: lightPrimary, darkColor: darkPrimary);
  Color restaurantMenuTitleColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: lightOnSurface, darkColor: darkOnSurface);
  Color restaurantLoadingIndicatorColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: lightPrimary, darkColor: darkPrimary);
  Color restaurantErrorIconColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: lightOnSurface.withValues(alpha: 0.4), darkColor: darkOnSurface.withValues(alpha: 0.4));
  Color restaurantErrorTextColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: lightOnSurface.withValues(alpha: 0.7), darkColor: darkOnSurface.withValues(alpha: 0.7));
  Color restaurantRetryButtonBackgroundColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: lightPrimary, darkColor: darkPrimary);
  Color restaurantRetryButtonTextColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: lightOnPrimary, darkColor: darkOnPrimary);
  Color restaurantEmptyIconColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: lightOnSurface.withValues(alpha: 0.4), darkColor: darkOnSurface.withValues(alpha: 0.4));
  Color restaurantEmptyTextColor(bool isDark) => getColorByTheme(isDark: isDark, lightColor: lightOnSurface.withValues(alpha: 0.7), darkColor: darkOnSurface.withValues(alpha: 0.7));

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
