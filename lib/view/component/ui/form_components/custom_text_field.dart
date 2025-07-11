import '../../../../utils/imports/common_libs.dart';

/// Campo de texto customizado com estilo consistente
class CustomTextField extends StatelessWidget {
  final String label;
  final String hintText;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final bool obscureText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextInputType? keyboardType;
  final int? maxLines;
  final bool enabled;
  final VoidCallback? onTap;
  final bool readOnly;

  const CustomTextField({
    super.key,
    required this.label,
    required this.hintText,
    required this.controller,
    this.validator,
    this.obscureText = false,
    this.suffixIcon,
    this.prefixIcon,
    this.keyboardType,
    this.maxLines = 1,
    this.enabled = true,
    this.onTap,
    this.readOnly = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final ui = UIConstants();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: GoogleFonts.inter(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.5,
            color: ui.getOnSurfaceColor(isDark),
          ),
        ),
        SizedBox(height: ui.spacing2),
        TextFormField(
          controller: controller,
          obscureText: obscureText,
          keyboardType: keyboardType,
          validator: validator,
          maxLines: maxLines,
          enabled: enabled,
          onTap: onTap,
          readOnly: readOnly,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: GoogleFonts.inter(
              color: ui.getColorByTheme(
                isDark: isDark,
                lightColor: ui.lightOnSurfaceVariant,
                darkColor: ui.darkOnSurfaceVariant,
              ),
            ),
            filled: true,
            fillColor: ui.getColorByTheme(
              isDark: isDark,
              lightColor: ui.lightSurfaceContainerLow,
              darkColor: ui.darkSurfaceContainer,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(ui.radius12),
              borderSide: BorderSide.none,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(ui.radius12),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(ui.radius12),
              borderSide: BorderSide(
                color: ui.getPrimaryColor(isDark),
                width: 2,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(ui.radius12),
              borderSide: BorderSide(
                color: ui.getColorByTheme(
                  isDark: isDark,
                  lightColor: ui.lightError,
                  darkColor: ui.darkError,
                ),
                width: 1,
              ),
            ),
            contentPadding: EdgeInsets.symmetric(
              horizontal: ui.spacing4,
              vertical: ui.spacing4,
            ),
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon,
          ),
        ),
      ],
    );
  }
}
