import '../../utils/imports/common_libs.dart';

class CategoryChip extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const CategoryChip({
    super.key,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final ui = uiConstants;

    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: Duration(milliseconds: ui.categoryChipAnimationDuration),
        padding: EdgeInsets.symmetric(
          horizontal: ui.spacing4,
          vertical: ui.spacing2,
        ),
        decoration: BoxDecoration(
          color: isSelected 
              ? ui.getPrimaryColor(isDark)
              : ui.getColorByTheme(
                  isDark: isDark,
                  lightColor: ui.lightSurface,
                  darkColor: ui.darkSurface,
                ),
          borderRadius: BorderRadius.circular(ui.radiusFull),
          border: Border.all(
            color: isSelected 
                ? ui.getPrimaryColor(isDark)
                : ui.getColorByTheme(
                    isDark: isDark,
                    lightColor: ui.lightOutlineVariant,
                    darkColor: ui.darkOutlineVariant,
                  ),
            width: ui.borderWidth1,
          ),
          boxShadow: isSelected
              ? [
                  BoxShadow(
                    color: ui.getPrimaryColor(isDark).withValues(alpha: ui.opacity30),
                    blurRadius: ui.elevation8,
                    offset: Offset(0, ui.spacing1 / 2),
                  ),
                ]
              : [
                  BoxShadow(
                    color: ui.getColorByTheme(
                      isDark: isDark,
                      lightColor: ui.lightShadow,
                      darkColor: ui.darkShadow,
                    ).withValues(alpha: ui.opacity10),
                    blurRadius: ui.elevation4,
                    offset: Offset(0, ui.spacing1 / 4),
                  ),
                ],
        ),
        child: Center(
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(
            color: isSelected 
                ? ui.getColorByTheme(
                    isDark: isDark,
                    lightColor: ui.lightOnPrimary,
                    darkColor: ui.darkOnPrimary,
                  )
                : ui.getColorByTheme(
                    isDark: isDark,
                    lightColor: ui.lightOnSurface,
                    darkColor: ui.darkOnSurface,
                  ),
            fontWeight: isSelected ? ui.categoryChipSelectedFontWeight : ui.categoryChipUnselectedFontWeight,
            fontSize: ui.categoryChipFontSize,
            fontFamily: ui.categoryChipFontFamily,
            ),
          ),
        ),
      ),
    );
  }
}