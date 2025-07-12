import '../../../../utils/imports/common_libs.dart';

/// Indicador de páginas para o onboarding
class PageIndicator extends StatelessWidget {
  final int currentPage;
  final int totalPages;

  const PageIndicator({
    super.key,
    required this.currentPage,
    required this.totalPages,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final ui = UIConstants();

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        totalPages,
        (index) => AnimatedContainer(
          duration: Duration(milliseconds: ui.pageIndicatorAnimationDuration),
          margin: EdgeInsets.symmetric(horizontal: ui.spacing1),
          width: currentPage == index ? ui.pageIndicatorActiveWidth : ui.pageIndicatorInactiveWidth,
          height: ui.pageIndicatorHeight,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(ui.radius4),
            color: currentPage == index
                ? ui.getColorByTheme(
                    isDark: isDark,
                    lightColor: ui.lightPrimary,
                    darkColor: ui.darkPrimary,
                  )
                : ui.getColorByTheme(
                    isDark: isDark,
                    lightColor: ui.lightOutlineVariant,
                    darkColor: ui.darkOutlineVariant,
                  ),
          ),
        ),
      ),
    );
  }
}