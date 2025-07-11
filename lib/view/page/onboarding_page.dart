import '../../utils/imports/common_libs.dart';

/// Página de onboarding com múltiplas telas
class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _pageController = PageController();
  final UIConstants _ui = UIConstants();

  @override
  void initState() {
    super.initState();
  }

  List<OnboardingData> _getOnboardingData() {
    return [
      OnboardingData(
        title: StringConstants.onboardingTitle1(context),
        description: StringConstants.onboardingDescription1(context),
        illustration: OnboardingIllustrations.favorites,
      ),
      OnboardingData(
        title: StringConstants.onboardingTitle2(context),
        description: StringConstants.onboardingDescription2(context),
        illustration: OnboardingIllustrations.chef,
      ),
      OnboardingData(
        title: StringConstants.onboardingTitle3(context),
        description: StringConstants.onboardingDescription3(context),
        illustration: OnboardingIllustrations.delivery,
      ),
    ];
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _nextPage() {
    final onboardingProvider = Provider.of<OnboardingProvider>(context, listen: false);
    final onboardingData = _getOnboardingData();
    
    if (onboardingProvider.currentPageIndex < onboardingData.length - 1) {
      onboardingProvider.nextPage();
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      _completeOnboarding();
    }
  }

  void _previousPage() {
    final onboardingProvider = Provider.of<OnboardingProvider>(context, listen: false);
    
    if (onboardingProvider.currentPageIndex > 0) {
      onboardingProvider.previousPage();
      _pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _completeOnboarding() {
    final onboardingProvider = Provider.of<OnboardingProvider>(context, listen: false);
    onboardingProvider.completeOnboarding();
    context.go(Routes.home);
  }

  void _skipOnboarding() {
    _completeOnboarding();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Consumer2<OnboardingProvider, LocaleProvider>(
      builder: (context, onboardingProvider, localeProvider, child) {
        final onboardingData = _getOnboardingData();
        final isLastPage = onboardingProvider.currentPageIndex == onboardingData.length - 1;
        
        return Scaffold(
          backgroundColor: _ui.getSurfaceColor(isDark),
          body: SafeArea(
            child: Column(
              children: [
                // Header com botão Skip
                _buildHeader(isLastPage),
                
                // PageView com as páginas de onboarding
                Expanded(
                  child: PageView.builder(
                    controller: _pageController,
                    onPageChanged: (index) {
                      onboardingProvider.setCurrentPage(index);
                    },
                    itemCount: onboardingData.length,
                    itemBuilder: (context, index) {
                      final data = onboardingData[index];
                      return OnboardingPageItem(
                        title: data.title,
                        description: data.description,
                        illustration: data.illustration,
                      );
                    },
                  ),
                ),
                
                // Footer com indicadores e botões
                _buildFooter(onboardingProvider, isLastPage, onboardingData),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildHeader(bool isLastPage) {
    return Padding(
      padding: EdgeInsets.all(_ui.spacing4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          if (!isLastPage)
            TextButton(
              onPressed: _skipOnboarding,
              child: Text(
                StringConstants.skip(context),
                style: GoogleFonts.inter(
                  fontSize: 16,
                  color: _ui.getColorByTheme(
                    isDark: Theme.of(context).brightness == Brightness.dark,
                    lightColor: _ui.lightOnSurfaceVariant,
                    darkColor: _ui.darkOnSurfaceVariant,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildFooter(OnboardingProvider onboardingProvider, bool isLastPage, List<OnboardingData> onboardingData) {
    return Padding(
      padding: EdgeInsets.all(_ui.spacing6),
      child: Column(
        children: [
          // Indicador de páginas
          PageIndicator(
            currentPage: onboardingProvider.currentPageIndex,
            totalPages: onboardingData.length,
          ),
          
          SizedBox(height: _ui.spacing8),
          
          // Botões de navegação
          Row(
            children: [
              // Botão Voltar (invisível na primeira página)
              SizedBox(
                width: 80,
                child: onboardingProvider.currentPageIndex > 0
                    ? TextButton(
                        onPressed: _previousPage,
                        child: Text(
                          StringConstants.back(context),
                          style: GoogleFonts.inter(
                            fontSize: 16,
                            color: _ui.getColorByTheme(
                              isDark: Theme.of(context).brightness == Brightness.dark,
                              lightColor: _ui.lightOnSurfaceVariant,
                              darkColor: _ui.darkOnSurfaceVariant,
                            ),
                          ),
                        ),
                      )
                    : null,
              ),
              
              // Espaço flexível
              const Spacer(),
              
              // Botão principal
              CustomPrimaryButton(
                text: isLastPage 
                    ? StringConstants.getStarted(context)
                    : StringConstants.next(context),
                onPressed: _nextPage,
                width: 160,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/// Classe para armazenar dados de cada página de onboarding
class OnboardingData {
  final String title;
  final String description;
  final Widget illustration;

  OnboardingData({
    required this.title,
    required this.description,
    required this.illustration,
  });
}