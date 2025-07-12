import '../../../../utils/imports/common_libs.dart';

/// Botão de login social reutilizável
class SocialLoginButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  final VoidCallback onPressed;
  final String? tooltip;

  const SocialLoginButton({
    super.key,
    required this.icon,
    required this.color,
    required this.onPressed,
    this.tooltip,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final ui = uiConstants;

    final button = Container(
      width: ui.socialLoginButtonSize,
      height: ui.socialLoginButtonSize,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
        boxShadow: [
          BoxShadow(
            color: ui.getColorByTheme(
              isDark: isDark,
              lightColor: color.withValues(alpha: ui.socialLoginButtonShadowAlphaLight),
              darkColor: color.withValues(alpha: ui.socialLoginButtonShadowAlphaDark),
            ),
            blurRadius: ui.elevation2,
            offset: Offset(0, ui.spacing1 / 2),
          ),
        ],
      ),
      child: IconButton(
        icon: Icon(
          icon,
          color: ui.socialLoginButtonIconColor,
          size: ui.socialLoginButtonIconSize,
        ),
        onPressed: onPressed,
      ),
    );

    if (tooltip != null) {
      return Tooltip(message: tooltip!, child: button);
    }

    return button;
  }
}