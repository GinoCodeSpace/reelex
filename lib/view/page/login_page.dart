import '../../utils/imports/common_libs.dart';

/// Página de login com formulário e opções de autenticação social
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

  final UIConstants _ui = UIConstants();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _handleLogin() async {
    if (_formKey.currentState!.validate()) {
      final authProvider = Provider.of<AuthProvider>(context, listen: false);
      
      final success = await authProvider.login(
        _emailController.text.trim(),
        _passwordController.text,
      );

      if (mounted) {
        if (success) {
          // Navigate to home page after successful login
          context.go(Routes.home);
        } else {
          // Show error message
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Login failed. Please check your credentials.'),
              backgroundColor: Colors.red,
            ),
          );
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Consumer<AuthProvider>(
      builder: (context, authProvider, child) {
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
                    _buildLoginButton(theme, authProvider),

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
      },
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
        CustomTextField(
          label: 'EMAIL',
          hintText: 'example@gmail.com',
          controller: _emailController,
          keyboardType: TextInputType.emailAddress,
          validator: FormValidators.validateEmail,
        ),

        SizedBox(height: _ui.spacing5),

        // Password Field
        CustomTextField(
          label: 'PASSWORD',
          hintText: '••••••••••••',
          controller: _passwordController,
          obscureText: !_isPasswordVisible,
          validator: FormValidators.validatePassword,
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
              activeColor: _ui.getPrimaryColor(
                theme.brightness == Brightness.dark,
              ),
            ),
            Text(
              'Remember me',
              style: GoogleFonts.inter(
                fontSize: 14,
                color: _ui.getOnSurfaceColor(
                  theme.brightness == Brightness.dark,
                ),
              ),
            ),
          ],
        ),
        TextButton(
          onPressed: () {
            context.push(Routes.forgotPassword);
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

  Widget _buildLoginButton(ThemeData theme, AuthProvider authProvider) {
    return CustomPrimaryButton(
      text: 'LOG IN',
      onPressed: _handleLogin,
      isLoading: authProvider.isLoading,
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
            context.push(Routes.signUp);
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
            SocialLoginButton(
              icon: Icons.facebook,
              color: const Color(0xFF1877F2),
              tooltip: 'Login with Facebook',
              onPressed: () {
                // Handle Facebook login
              },
            ),
            SizedBox(width: _ui.spacing4),
            SocialLoginButton(
              icon: Icons.alternate_email,
              color: const Color(0xFF1DA1F2),
              tooltip: 'Login with Twitter',
              onPressed: () {
                // Handle Twitter login
              },
            ),
            SizedBox(width: _ui.spacing4),
            SocialLoginButton(
              icon: Icons.apple,
              color: Colors.black,
              tooltip: 'Login with Apple',
              onPressed: () {
                // Handle Apple login
              },
            ),
          ],
        ),
      ],
    );
  }
}
