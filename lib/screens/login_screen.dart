// lib/screens/login_screen.dart

import 'package:flutter/material.dart';
import '../widgets/facebook_logo.dart';
import '../widgets/login_form.dart';
import '../widgets/page_footer.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 60),

              // Logo + tagline
              const FacebookLogo(),
              const SizedBox(height: 32),

              // Login card
              const LoginForm(),
              const SizedBox(height: 28),

              // Footer
              const PageFooter(),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}
