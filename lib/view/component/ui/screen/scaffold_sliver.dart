import '../../../../utils/imports/common_libs.dart';

class ScaffoldSliver extends StatelessWidget {
  const ScaffoldSliver({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final ui = UIConstants();

    return CustomScrollView(
      slivers: [
        const CustomSliverAppBar(),
        const SliverToBoxAdapter(),
        SliverFillRemaining(
          child: Scaffold(
            backgroundColor: ui.getColorByTheme(
              isDark: isDark,
              lightColor: ui.lightSurface,
            darkColor: ui.darkSurface,
            ),
            body: Center(child: child),
          ),
        ),
      ],
    );
  }
}
