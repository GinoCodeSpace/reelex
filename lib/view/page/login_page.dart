import '../../utils/imports/common_libs.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isPasswordVisible = false;
  bool _rememberMe = false;
  bool _isLoading = false;

  final UIConstants _ui = UIConstants();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _handleLogin() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _isLoading = true;
      });

      // Simulate login process
      await Future.delayed(const Duration(seconds: 2));

      setState(() {
        _isLoading = false;
      });

      // Navigate to home page after successful login
      if (mounted) {
        context.go(Routes.home);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    
    return Scaffold(
      backgroundColor: _ui.getSurfaceColor(isDark),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(_ui.spacing6),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: _ui.spacing20),
                
                // Header Section
                _buildHeader(isDark),
                
                SizedBox(height: _ui.spacing12),
                
                // Login Form
                _buildLoginForm(theme, isDark),
                
                SizedBox(height: _ui.spacing8),
                
                // Remember Me & Forgot Password
                _buildRememberAndForgot(theme),
                
                SizedBox(height: _ui.spacing8),
                
                // Login Button
                _buildLoginButton(theme),
                
                SizedBox(height: _ui.spacing6),
                
                // Sign Up Link
                _buildSignUpLink(theme),
                
                SizedBox(height: _ui.spacing6),
                
                // Social Login
                _buildSocialLogin(theme, isDark),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(bool isDark) {
    return Column(
      children: [
        Text(
          'Log In',
          style: GoogleFonts.inter(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: _ui.getOnSurfaceColor(isDark),
          ),
        ),
        SizedBox(height: _ui.spacing2),
        Text(
          'Please sign in to your existing account',
          style: GoogleFonts.inter(
            fontSize: 16,
            color: _ui.getColorByTheme(
              isDark: isDark,
              lightColor: _ui.lightOnSurfaceVariant,
              darkColor: _ui.darkOnSurfaceVariant,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildLoginForm(ThemeData theme, bool isDark) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Email Field
        Text(
          'EMAIL',
          style: GoogleFonts.inter(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.5,
            color: _ui.getOnSurfaceColor(isDark),
          ),
        ),
        SizedBox(height: _ui.spacing2),
        TextFormField(
          controller: _emailController,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: 'example@gmail.com',
            hintStyle: GoogleFonts.inter(
              color: _ui.getColorByTheme(
                isDark: isDark,
                lightColor: _ui.lightOnSurfaceVariant,
                darkColor: _ui.darkOnSurfaceVariant,
              ),
            ),
            filled: true,
            fillColor: _ui.getColorByTheme(
              isDark: isDark,
              lightColor: _ui.lightSurfaceContainerLow,
              darkColor: _ui.darkSurfaceContainer,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(_ui.radius12),
              borderSide: BorderSide.none,
            ),
            contentPadding: EdgeInsets.symmetric(
              horizontal: _ui.spacing4,
              vertical: _ui.spacing4,
            ),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter your email';
            }
            if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}\$').hasMatch(value)) {
              return 'Please enter a valid email';
            }
            return null;
          },
        ),
        
        SizedBox(height: _ui.spacing5),
        
        // Password Field
        Text(
          'PASSWORD',
          style: GoogleFonts.inter(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.5,
            color: _ui.getOnSurfaceColor(isDark),
          ),
        ),
        SizedBox(height: _ui.spacing2),
        TextFormField(
          controller: _passwordController,
          obscureText: !_isPasswordVisible,
          decoration: InputDecoration(
            hintText: '••••••••••••',
            hintStyle: GoogleFonts.inter(
              color: _ui.getColorByTheme(
                isDark: isDark,
                lightColor: _ui.lightOnSurfaceVariant,
                darkColor: _ui.darkOnSurfaceVariant,
              ),
            ),
            filled: true,
            fillColor: _ui.getColorByTheme(
              isDark: isDark,
              lightColor: _ui.lightSurfaceContainerLow,
              darkColor: _ui.darkSurfaceContainer,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(_ui.radius12),
              borderSide: BorderSide.none,
            ),
            contentPadding: EdgeInsets.symmetric(
              horizontal: _ui.spacing4,
              vertical: _ui.spacing4,
            ),
            suffixIcon: IconButton(
              icon: Icon(
                _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                color: _ui.getColorByTheme(
                  isDark: isDark,
                  lightColor: _ui.lightOnSurfaceVariant,
                  darkColor: _ui.darkOnSurfaceVariant,
                ),
              ),
              onPressed: () {
                setState(() {
                  _isPasswordVisible = !_isPasswordVisible;
                });
              },
            ),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter your password';
            }
            if (value.length < 6) {
              return 'Password must be at least 6 characters';
            }
            return null;
          },
        ),
      ],
    );
  }

  Widget _buildRememberAndForgot(ThemeData theme) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(
              value: _rememberMe,
              onChanged: (value) {
                setState(() {
                  _rememberMe = value ?? false;
                });
              },
              activeColor: _ui.getPrimaryColor(theme.brightness == Brightness.dark),
            ),
            Text(
              'Remember me',
              style: GoogleFonts.inter(
                fontSize: 14,
                color: _ui.getOnSurfaceColor(theme.brightness == Brightness.dark),
              ),
            ),
          ],
        ),
        TextButton(
          onPressed: () {
            // Handle forgot password
          },
          child: Text(
            'Forgot Password',
            style: GoogleFonts.inter(
              fontSize: 14,
              color: _ui.getPrimaryColor(theme.brightness == Brightness.dark),
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildLoginButton(ThemeData theme) {
    return SizedBox(
      height: 56,
      child: ElevatedButton(
        onPressed: _isLoading ? null : _handleLogin,
        style: ElevatedButton.styleFrom(
          backgroundColor: _ui.getPrimaryColor(theme.brightness == Brightness.dark),
          foregroundColor: _ui.getColorByTheme(
            isDark: theme.brightness == Brightness.dark,
            lightColor: _ui.lightOnPrimary,
            darkColor: _ui.darkOnPrimary,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(_ui.radius12),
          ),
          elevation: 0,
        ),
        child: _isLoading
            ? SizedBox(
                height: 20,
                width: 20,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  valueColor: AlwaysStoppedAnimation<Color>(
                    _ui.getColorByTheme(
                      isDark: theme.brightness == Brightness.dark,
                      lightColor: _ui.lightOnPrimary,
                      darkColor: _ui.darkOnPrimary,
                    ),
                  ),
                ),
              )
            : Text(
                'LOG IN',
                style: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.5,
                ),
              ),
      ),
    );
  }

  Widget _buildSignUpLink(ThemeData theme) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account? ",
          style: GoogleFonts.inter(
            fontSize: 14,
            color: _ui.getColorByTheme(
              isDark: theme.brightness == Brightness.dark,
              lightColor: _ui.lightOnSurfaceVariant,
              darkColor: _ui.darkOnSurfaceVariant,
            ),
          ),
        ),
        TextButton(
          onPressed: () {
            // Handle sign up navigation
          },
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            minimumSize: Size.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          child: Text(
            'SIGN UP',
            style: GoogleFonts.inter(
              fontSize: 14,
              color: _ui.getPrimaryColor(theme.brightness == Brightness.dark),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSocialLogin(ThemeData theme, bool isDark) {
    return Column(
      children: [
        Text(
          'Or',
          style: GoogleFonts.inter(
            fontSize: 14,
            color: _ui.getColorByTheme(
              isDark: isDark,
              lightColor: _ui.lightOnSurfaceVariant,
              darkColor: _ui.darkOnSurfaceVariant,
            ),
          ),
        ),
        SizedBox(height: _ui.spacing4),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildSocialButton(
              icon: Icons.facebook,
              color: const Color(0xFF1877F2),
              onPressed: () {
                // Handle Facebook login
              },
            ),
            SizedBox(width: _ui.spacing4),
            _buildSocialButton(
              icon: Icons.alternate_email,
              color: const Color(0xFF1DA1F2),
              onPressed: () {
                // Handle Twitter login
              },
            ),
            SizedBox(width: _ui.spacing4),
            _buildSocialButton(
              icon: Icons.apple,
              color: isDark ? Colors.white : Colors.black,
              onPressed: () {
                // Handle Apple login
              },
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildSocialButton({
    required IconData icon,
    required Color color,
    required VoidCallback onPressed,
  }) {
    return Container(
      width: 56,
      height: 56,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
      child: IconButton(
        icon: Icon(
          icon,
          color: Colors.white,
          size: 24,
        ),
        onPressed: onPressed,
      ),
    );
  }
}
