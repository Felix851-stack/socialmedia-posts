// lib/widgets/facebook_logo.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../theme/app_theme.dart';
import '../constants/app_constants.dart';

class FacebookLogo extends StatelessWidget {
  const FacebookLogo({super.key});

  TextStyle _fillStyle() {
    return GoogleFonts.notoSans(
      fontSize: 42,
      fontWeight: FontWeight.w900,
      color: AppColors.facebookBlue,
      letterSpacing: -1,
    );
  }

  TextStyle _strokeStyle() {
    return GoogleFonts.notoSans(
      fontSize: 42,
      fontWeight: FontWeight.w900,
      foreground: Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = 2.2
        ..color = Colors.black,
      letterSpacing: -1,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Text(
              AppConstants.appName,
              style: _strokeStyle(),
            ),
            Text(
              AppConstants.appName,
              style: _fillStyle(),
            ),
          ],
        ),
        const SizedBox(height: 8),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 280),
          child: Text(
            AppConstants.tagline,
            textAlign: TextAlign.center,
            style: GoogleFonts.notoSans(
              fontSize: 15,
              color: AppColors.textSecondary,
              height: 1.4,
            ),
          ),
        ),
      ],
    );
  }
}
