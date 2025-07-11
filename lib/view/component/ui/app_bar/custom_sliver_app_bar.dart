import '../../../../utils/imports/common_libs.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final router = GoRouter.of(context);
    
    return Consumer<NavigationProvider>(
      builder: (context, navigationProvider, child) {
        // Atualiza o estado de navegação baseado na rota atual
        WidgetsBinding.instance.addPostFrameCallback((_) {
          final currentRoute = GoRouterState.of(context).uri.path;
          final canPop = router.canPop();
          navigationProvider.updateNavigation(currentRoute, canPop: canPop);
        });

        final theme = Theme.of(context);
        final isDark = theme.brightness == Brightness.dark;
        final ui = UIConstants();

        return SliverAppBar(
          title: Text(
            appConstants.appName,
            style: TextStyle(
              fontFamily: 'SanFranciscoPro',
              fontWeight: FontWeight.w600,
              color: ui.getColorByTheme(
                isDark: isDark,
                lightColor: ui.lightOnSurface,
                darkColor: ui.darkOnSurface,
              ),
            ),
          ),
          backgroundColor: ui.getColorByTheme(
            isDark: isDark,
            lightColor: ui.lightSurface,
            darkColor: ui.darkSurface,
          ),
          floating: true,
          snap: true,
          elevation: ui.elevation2,
          leading: navigationProvider.showBackButton
              ? IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: ui.getColorByTheme(
                      isDark: isDark,
                      lightColor: ui.lightOnSurface,
                      darkColor: ui.darkOnSurface,
                    ),
                  ),
                  onPressed: () {
                    if (router.canPop()) {
                      router.pop();
                    } else {
                      // Fallback para navegação manual
                      navigationProvider.navigateBack();
                      router.go(navigationProvider.currentRoute);
                    }
                  },
                  tooltip: StringConstants.back(context),
                )
              : null,
          actions: [
            const LanguageSelector(),
            const ThemeToggleButton(),
            SizedBox(width: ui.spacing2),
          ],
        );
      },
    );
  }
}
