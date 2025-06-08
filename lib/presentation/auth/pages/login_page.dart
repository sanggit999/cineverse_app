import 'package:cineverse_app/common/widgets/text_form_field/base_text_form_field.dart';
import 'package:flutter/material.dart';
//
import 'package:go_router/go_router.dart';
import 'package:cineverse_app/core/routers/app_routes.dart';
//
import 'package:google_fonts/google_fonts.dart';
//
import 'package:cineverse_app/core/extensions/localization_extension.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 16.0,
          children: [
            Text(
              context.l10n.login,
              style: GoogleFonts.roboto(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),

            BaseTextFormField(
              controller: emailController,
              hintText: 'Nhap email',
              obscureText: false,
            ),

            BaseTextFormField(
              controller: passwordController,
              hintText: 'Nhap mat khau',
              obscureText: true,
            ),
            ElevatedButton(
              onPressed: () => {context.go(AppRoutes.language)},
              child: Text(
                context.l10n.login,
                style: GoogleFonts.roboto(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
