// lib/widgets/facebook_logo.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../theme/app_theme.dart';
import '../constants/app_constants.dart';

class FacebookLogo extends StatelessWidget {
  const FacebookLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          AppConstants.appName,
          style: GoogleFonts.notoSans(
            fontSize: 42,
            fontWeight: FontWeight.w900,
            color: AppColors.facebookBlue,
            letterSpacing: -1,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          AppConstants.tagline,
          textAlign: TextAlign.center,
          style: GoogleFonts.notoSans(
            fontSize: 15,
            color: AppColors.textSecondary,
            height: 1.4,
          ),
        ),
      ],
    );
  }
}
