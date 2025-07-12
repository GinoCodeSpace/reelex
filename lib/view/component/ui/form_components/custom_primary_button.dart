import '../../../../utils/imports/common_libs.dart';


/// Botão primário customizado
class CustomPrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final bool isLoading;
  final IconData? icon;
  final double? width;
  final double height;

  const CustomPrimaryButton({
    super.key,
    required this.text,
    this.onPressed,
    this.isLoading = false,
    this.icon,
    this.width,
    this.height = 56.0,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final ui = uiConstants;

    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: isLoading ? null : onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: ui.getPrimaryColor(isDark),
          foregroundColor: ui.getColorByTheme(
            isDark: isDark,
            lightColor: ui.lightOnPrimary,
            darkColor: ui.darkOnPrimary,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(ui.radius12),
          ),
          elevation: ui.primaryButtonElevation,
          disabledBackgroundColor: ui
              .getPrimaryColor(isDark)
              .withValues(alpha: ui.primaryButtonDisabledAlpha),
        ),
        child: isLoading
            ? SizedBox(
                height: ui.primaryButtonProgressSize,
                width: ui.primaryButtonProgressSize,
                child: CircularProgressIndicator(
                  strokeWidth: ui.primaryButtonProgressStrokeWidth,
                  valueColor: AlwaysStoppedAnimation<Color>(
                    ui.getColorByTheme(
                      isDark: isDark,
                      lightColor: ui.lightOnPrimary,
                      darkColor: ui.darkOnPrimary,
                    ),
                  ),
                ),
              )
            : Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (icon != null) ...[
                    Icon(icon, size: ui.primaryButtonIconSize),
                    SizedBox(width: ui.primaryButtonIconSpacing),
                  ],
                  Flexible(
                    child: Text(
                      text,
                      style: GoogleFonts.inter(
                        fontSize: ui.primaryButtonFontSize,
                        fontWeight: FontWeight.w600,
                        letterSpacing: ui.primaryButtonLetterSpacing,
                      ),
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}