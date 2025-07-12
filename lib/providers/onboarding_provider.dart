import '../utils/imports/common_libs.dart';

class OnboardingProvider extends ChangeNotifier {
  bool _isOnboardingCompleted = false;
  int _currentPageIndex = 0;
  
  bool get isOnboardingCompleted => _isOnboardingCompleted;
  int get currentPageIndex => _currentPageIndex;
  
  /// Marca o onboarding como concluído
  void completeOnboarding() {
    _isOnboardingCompleted = true;
    notifyListeners();
  }
  
  /// Define a página atual do onboarding
  void setCurrentPage(int index) {
    _currentPageIndex = index;
    notifyListeners();
  }
  
  /// Avança para a próxima página
  void nextPage() {
    _currentPageIndex++;
    notifyListeners();
  }
  
  /// Volta para a página anterior
  void previousPage() {
    if (_currentPageIndex > 0) {
      _currentPageIndex--;
      notifyListeners();
    }
  }
  
  /// Reseta o onboarding
  void resetOnboarding() {
    _isOnboardingCompleted = false;
    _currentPageIndex = 0;
    notifyListeners();
  }
}