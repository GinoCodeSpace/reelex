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
      final authProvider = Provider.of<AuthProvider>(context, listen: false);
      
      final success = await authProvider.register(
        _emailController.text.trim(),
        _passwordController.text,
        _confirmPasswordController.text,
      );

      if (mounted) {
        if (success) {
          // Navigate to home page after successful registration
          context.go(Routes.home);
        } else {
          // Show error message
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(StringConstants.registrationFailed(context)),
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
                    SizedBox(height: _ui.spacing12),

                    // Header Section
                    _buildHeader(isDark),

                    SizedBox(height: _ui.spacing8),

                    // Sign Up Form
                    _buildSignUpForm(theme, isDark),

                    SizedBox(height: _ui.spacing8),

                    // Sign Up Button
                    _buildSignUpButton(theme, authProvider),

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
      },
    );
  }

  Widget _buildHeader(bool isDark) {
    return Column(
      children: [
        Text(
          StringConstants.signUpTitle(context),
          style: GoogleFonts.inter(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: _ui.getOnSurfaceColor(isDark),
          ),
        ),
        SizedBox(height: _ui.spacing2),
        Text(
          StringConstants.pleaseSignUp(context),
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
          label: StringConstants.name(context),
          hintText: StringConstants.nameHint(context),
          controller: _nameController,
          keyboardType: TextInputType.name,
          validator: (value) => FormValidators.validateName(value, context),
        ),

        SizedBox(height: _ui.spacing5),

        // Email Field
        CustomTextField(
          label: StringConstants.email(context),
          hintText: StringConstants.emailHint(context),
          controller: _emailController,
          keyboardType: TextInputType.emailAddress,
          validator: (value) => FormValidators.validateEmail(value, context),
        ),

        SizedBox(height: _ui.spacing5),

        // Password Field
        CustomTextField(
          label: StringConstants.password(context),
          hintText: StringConstants.passwordHint(context),
          controller: _passwordController,
          obscureText: !_isPasswordVisible,
          validator: (value) => FormValidators.validatePassword(value, context),
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
          label: StringConstants.retypePassword(context),
          hintText: StringConstants.passwordHint(context),
          controller: _confirmPasswordController,
          obscureText: !_isConfirmPasswordVisible,
          validator: (value) => FormValidators.validatePasswordConfirmation(
            value,
            _passwordController.text,
            context,
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

  Widget _buildSignUpButton(ThemeData theme, AuthProvider authProvider) {
    return CustomPrimaryButton(
      text: StringConstants.signUpButton(context),
      onPressed: _handleSignUp,
      isLoading: authProvider.isLoading,
    );
  }

  Widget _buildLoginLink(ThemeData theme) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          StringConstants.alreadyHaveAccount(context),
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
            StringConstants.logInButton(context),
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
          StringConstants.or(context),
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
              tooltip: StringConstants.signUpWithFacebook(context),
              onPressed: () {
                // Handle Facebook sign up
              },
            ),
            SizedBox(width: _ui.spacing4),
            SocialLoginButton(
              icon: Icons.alternate_email,
              color: const Color(0xFF1DA1F2),
              tooltip: StringConstants.signUpWithTwitter(context),
              onPressed: () {
                // Handle Twitter sign up
              },
            ),
            SizedBox(width: _ui.spacing4),
            SocialLoginButton(
              icon: Icons.apple,
              color: Colors.black,
              tooltip: StringConstants.signUpWithApple(context),
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