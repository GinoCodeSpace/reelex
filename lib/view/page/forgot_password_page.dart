import '../../utils/imports/common_libs.dart';

/// Página de recuperação de senha
class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  bool _isLoading = false;

  final UIConstants _ui = UIConstants();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  Future<void> _handleSendCode() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _isLoading = true;
      });

      // Simulate sending reset code
      await Future.delayed(const Duration(seconds: 2));

      setState(() {
        _isLoading = false;
      });

      // Show success message
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'Reset code sent to ${_emailController.text}',
              style: GoogleFonts.inter(),
            ),
            backgroundColor: _ui.getPrimaryColor(
              Theme.of(context).brightness == Brightness.dark,
            ),
          ),
        );
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

                SizedBox(height: _ui.spacing12),

                // Email Form
                _buildEmailForm(theme, isDark),

                SizedBox(height: _ui.spacing8),

                // Send Code Button
                _buildSendCodeButton(theme),

                SizedBox(height: _ui.spacing6),

                // Back to Login Link
                _buildBackToLoginLink(theme),
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
          'Forgot Password',
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

  Widget _buildEmailForm(ThemeData theme, bool isDark) {
    return CustomTextField(
      label: 'EMAIL',
      hintText: 'example@gmail.com',
      controller: _emailController,
      keyboardType: TextInputType.emailAddress,
      validator: FormValidators.validateEmail,
    );
  }

  Widget _buildSendCodeButton(ThemeData theme) {
    return CustomPrimaryButton(
      text: 'SEND CODE',
      onPressed: _handleSendCode,
      isLoading: _isLoading,
    );
  }

  Widget _buildBackToLoginLink(ThemeData theme) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Remember your password? ',
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
            context.pop();
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
}
