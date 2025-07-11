import '../../../../utils/imports/common_libs.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final router = GoRouter.of(context);
    final canPop = router.canPop();

    return SliverAppBar(
      title: Text(appConstants.appName),
      floating: true,
      snap: true,
      leading: canPop
          ? IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => router.pop(),
              tooltip: 'Voltar',
            )
          : null,
      actions: [
        const LanguageSelector(),
        const ThemeToggleButton(),
        SizedBox(width: uiConstants.spacing2),
      ],
    );
  }
}
