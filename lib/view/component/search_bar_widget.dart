import '../../utils/imports/common_libs.dart';

class SearchBarWidget extends StatelessWidget {
  final TextEditingController controller;
  final ValueChanged<String> onChanged;
  final String hintText;

  const SearchBarWidget({
    super.key,
    required this.controller,
    required this.onChanged,
    this.hintText = 'Buscar restaurantes e pratos...',
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final ui = uiConstants;

    return Container(
      decoration: BoxDecoration(
        color: ui.getColorByTheme(
          isDark: isDark,
          lightColor: ui.lightSurfaceContainerLow,
          darkColor: ui.darkSurfaceContainerLow,
        ),
        borderRadius: BorderRadius.circular(ui.radius24),
        border: Border.all(
          color: ui.getColorByTheme(
            isDark: isDark,
            lightColor: ui.lightOutlineVariant,
            darkColor: ui.darkOutlineVariant,
          ),
          width: ui.borderWidth1,
        ),
      ),
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            color: ui.getColorByTheme(
              isDark: isDark,
              lightColor: ui.lightOnSurfaceVariant,
              darkColor: ui.darkOnSurfaceVariant,
            ),
            fontSize: UIConstants.searchBarFontSize,
            fontFamily: UIConstants.searchBarFontFamily,
          ),
          prefixIcon: Icon(
            Icons.search,
            color: ui.getColorByTheme(
              isDark: isDark,
              lightColor: ui.lightOnSurfaceVariant,
              darkColor: ui.darkOnSurfaceVariant,
            ),
            size: UIConstants.searchBarIconSize,
          ),
          suffixIcon: controller.text.isNotEmpty
              ? IconButton(
                  icon: Icon(
                    Icons.clear,
                    color: ui.getColorByTheme(
                      isDark: isDark,
                      lightColor: ui.lightOnSurfaceVariant,
                      darkColor: ui.darkOnSurfaceVariant,
                    ),
                    size: UIConstants.searchBarIconSize,
                  ),
                  onPressed: () {
                    controller.clear();
                    onChanged('');
                  },
                )
              : null,
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(
            horizontal: ui.spacing4,
            vertical: ui.spacing3,
          ),
        ),
        style: TextStyle(
          fontSize: UIConstants.searchBarFontSize,
          fontFamily: UIConstants.searchBarFontFamily,
          color: ui.getColorByTheme(
            isDark: isDark,
            lightColor: ui.lightOnSurface,
            darkColor: ui.darkOnSurface,
          ),
        ),
      ),
    );
  }
}