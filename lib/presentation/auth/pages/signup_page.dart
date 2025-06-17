import 'package:flutter/material.dart';
//
import 'package:go_router/go_router.dart';
import 'package:cineverse_app/core/routers/app_routes.dart';
import 'package:cineverse_app/core/extensions/l10n_extension.dart';
//
import 'package:google_fonts/google_fonts.dart';
//
import 'package:cineverse_app/common/widgets/elevated_button/base_button.dart';
import 'package:cineverse_app/common/widgets/text_form_field/base_text_form_field.dart';
//
import 'package:cineverse_app/common/widgets/appbar/base_app_bar.dart';
import 'package:cineverse_app/common/widgets/text_rich/base_text_rich.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return Scaffold(
      appBar: BaseAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 16.0,
          children: [
            _titleLogin(context),
            const SizedBox(height: 16.0),
            _emailOrUsernameField(context, emailController),
            _passwordField(context, passwordController),
            _registerButton(context),
            _alreadyHaveAccountText(context),
          ],
        ),
      ),
    );
  }

  Widget _titleLogin(BuildContext context) {
    return Text(
      context.l10n.register,
      style: GoogleFonts.roboto(fontSize: 32, fontWeight: FontWeight.bold),
    );
  }

  Widget _emailOrUsernameField(
    BuildContext context,
    TextEditingController controller,
  ) {
    return BaseTextFormField(
      controller: controller,
      hintText: context.l10n.enter_email,
      keyboardType: TextInputType.text,
      obscureText: false,
    );
  }

  Widget _passwordField(
    BuildContext context,
    TextEditingController controller,
  ) {
    return BaseTextFormField(
      controller: controller,
      hintText: context.l10n.password,
      keyboardType: TextInputType.text,
      obscureText: true,
    );
  }

  Widget _registerButton(BuildContext context) {
    return BaseButton(
      title: context.l10n.register,
      onPressed: () => {context.push(AppRoutes.language)},
    );
  }

  Widget _alreadyHaveAccountText(BuildContext context) {
    return BaseTextRich(
      text1: context.l10n.already_have_account,
      text2: context.l10n.login,
      onTap: () => context.go(AppRoutes.signin),
    );
  }
}
