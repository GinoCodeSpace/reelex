import '../../utils/imports/common_libs.dart';

/// Página de cadastro com formulário de registro
class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  bool _isPasswordVisible = false;
  bool _isConfirmPasswordVisible = false;
  bool _isLoading = false;

  final UIConstants _ui = UIConstants();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  Future<void> _handleSignUp() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _isLoading = true;
      });

      // Simulate sign up process
      await Future.delayed(const Duration(seconds: 2));

      setState(() {
        _isLoading = false;
      });

      // Navigate to home page after successful sign up
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
                SizedBox(height: _ui.spacing12),

                // Header Section
                _buildHeader(isDark),

                SizedBox(height: _ui.spacing8),

                // Sign Up Form
                _buildSignUpForm(theme, isDark),

                SizedBox(height: _ui.spacing8),

                // Sign Up Button
                _buildSignUpButton(theme),

                SizedBox(height: _ui.spacing6),

                // Login Link
                _buildLoginLink(theme),

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
          'Sign Up',
          style: GoogleFonts.inter(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: _ui.getOnSurfaceColor(isDark),
          ),
        ),
        SizedBox(height: _ui.spacing2),
        Text(
          'Please sign up to get started',
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

  Widget _buildSignUpForm(ThemeData theme, bool isDark) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Name Field
        CustomTextField(
          label: 'NAME',
          hintText: 'John doe',
          controller: _nameController,
          keyboardType: TextInputType.name,
          validator: FormValidators.validateName,
        ),

        SizedBox(height: _ui.spacing5),

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

        SizedBox(height: _ui.spacing5),

        // Confirm Password Field
        CustomTextField(
          label: 'RE-TYPE PASSWORD',
          hintText: '••••••••••••',
          controller: _confirmPasswordController,
          obscureText: !_isConfirmPasswordVisible,
          validator: (value) => FormValidators.validatePasswordConfirmation(
            value,
            _passwordController.text,
          ),
          suffixIcon: IconButton(
            icon: Icon(
              _isConfirmPasswordVisible ? Icons.visibility : Icons.visibility_off,
              color: _ui.getColorByTheme(
                isDark: isDark,
                lightColor: _ui.lightOnSurfaceVariant,
                darkColor: _ui.darkOnSurfaceVariant,
              ),
            ),
            onPressed: () {
              setState(() {
                _isConfirmPasswordVisible = !_isConfirmPasswordVisible;
              });
            },
          ),
        ),
      ],
    );
  }

  Widget _buildSignUpButton(ThemeData theme) {
    return CustomPrimaryButton(
      text: 'SIGN UP',
      onPressed: _handleSignUp,
      isLoading: _isLoading,
    );
  }

  Widget _buildLoginLink(ThemeData theme) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Already have an account? ',
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
            context.go(Routes.login);
          },
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            minimumSize: Size.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          child: Text(
            'LOG IN',
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
              tooltip: 'Sign up with Facebook',
              onPressed: () {
                // Handle Facebook sign up
              },
            ),
            SizedBox(width: _ui.spacing4),
            SocialLoginButton(
              icon: Icons.alternate_email,
              color: const Color(0xFF1DA1F2),
              tooltip: 'Sign up with Twitter',
              onPressed: () {
                // Handle Twitter sign up
              },
            ),
            SizedBox(width: _ui.spacing4),
            SocialLoginButton(
              icon: Icons.apple,
              color: Colors.black,
              tooltip: 'Sign up with Apple',
              onPressed: () {
                // Handle Apple sign up
              },
            ),
          ],
        ),
      ],
    );
  }
}