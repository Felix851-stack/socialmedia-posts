// lib/widgets/login_form.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../theme/app_theme.dart';
import '../constants/app_constants.dart';
import '../utils/validators.dart';
import 'custom_text_field.dart';
import 'primary_button.dart';
import 'or_divider.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isLoading = false;

  String get _loginSummary {
    final enteredValue = _emailController.text.trim();
    if (enteredValue.isEmpty) {
      return 'Ready to log in once your details are entered.';
    }

    return 'Trying to sign in as $enteredValue.';
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _handleLogin() async {
    if (_formKey.currentState?.validate() != true) return;

    setState(() => _isLoading = true);

    // This delay stands in for a real API call.
    // Replace it with your authentication service later.
    await Future.delayed(const Duration(seconds: 2));

    if (mounted) {
      setState(() => _isLoading = false);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Login successful! 🎉 $_loginSummary',
            style: GoogleFonts.notoSans(fontSize: 14),
          ),
          backgroundColor: AppColors.createGreen,
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
      );
    }
  }

  void _handleForgotPassword() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Forgot password tapped. Connect this button to your reset flow.',
          style: GoogleFonts.notoSans(fontSize: 14),
        ),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    );
  }

  void _handleCreateAccount() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          'Create account tapped. Connect this button to your sign-up screen.',
          style: GoogleFonts.notoSans(fontSize: 14),
        ),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(
            color: AppColors.shadowColor,
            blurRadius: 16,
            offset: Offset(0, 2),
          ),
        ],
      ),
      padding: const EdgeInsets.all(20),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(bottom: 16),
              child: Text(
                'Sign in to continue',
                textAlign: TextAlign.center,
                style: GoogleFonts.notoSans(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: AppColors.textPrimary,
                ),
              ),
            ),

            // Email / Phone field
            CustomTextField(
              hintText: AppConstants.emailOrPhone,
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              validator: Validators.validateEmailOrPhone,
            ),
            const SizedBox(height: 12),

            // Password field
            CustomTextField(
              hintText: AppConstants.password,
              controller: _passwordController,
              obscureText: true,
              validator: Validators.validatePassword,
            ),
            const SizedBox(height: 16),

            Text(
              'Tip: you can use any email/phone and a password with at least 6 characters while building the UI.',
              textAlign: TextAlign.center,
              style: GoogleFonts.notoSans(
                fontSize: 12,
                color: AppColors.textSecondary,
                height: 1.4,
              ),
            ),
            const SizedBox(height: 16),

            // Login button
            PrimaryButton(
              label: AppConstants.loginButton,
              onPressed: _handleLogin,
              isLoading: _isLoading,
            ),
            const SizedBox(height: 16),

            // Forgot password
            GestureDetector(
              onTap: _handleForgotPassword,
              child: Text(
                AppConstants.forgotPassword,
                style: GoogleFonts.notoSans(
                  fontSize: 14,
                  color: AppColors.forgotPasswordColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 20),

            const OrDivider(),
            const SizedBox(height: 20),

            // Create account button
            PrimaryButton(
              label: AppConstants.createAccount,
              onPressed: _handleCreateAccount,
              color: AppColors.createGreen,
              fontSize: 15,
            ),
          ],
        ),
      ),
    );
  }
}
