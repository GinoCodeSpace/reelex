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

        return SliverAppBar(
          title: Text(appConstants.appName),
          floating: true,
          snap: true,
          leading: navigationProvider.showBackButton
              ? IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    if (router.canPop()) {
                      router.pop();
                    } else {
                      // Fallback para navegação manual
                      navigationProvider.navigateBack();
                      router.go(navigationProvider.currentRoute);
                    }
                  },
                  tooltip: 'Voltar',
                )
              : null,
          actions: [
            const LanguageSelector(),
            const ThemeToggleButton(),
            SizedBox(width: uiConstants.spacing2),
          ],
        );
      },
    );
  }
}
