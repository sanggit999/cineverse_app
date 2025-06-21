import 'package:cineverse_app/common/widgets/appbar/base_app_bar.dart';
import 'package:cineverse_app/core/utils/validators/validators.dart';
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
import 'package:cineverse_app/common/widgets/text_rich/base_text_rich.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(hideLeading: true),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 16.0,
            children: [
              _titleLogin(context),
              const SizedBox(height: 16.0),
              _emailOrUsernameField(context),
              _passwordField(context),
              _loginButton(context),
              _dontHaveAnAccountText(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _titleLogin(BuildContext context) {
    return Text(
      context.l10n.login,
      style: GoogleFonts.roboto(fontSize: 32, fontWeight: FontWeight.bold),
    );
  }

  Widget _emailOrUsernameField(BuildContext context) {
    return BaseTextFormField(
      controller: _emailController,
      hintText: context.l10n.enter_email,
      keyboardType: TextInputType.text,
      obscureText: false,
      validator: (value) => Validator.validateEmail(value, context),
    );
  }

  Widget _passwordField(BuildContext context) {
    return BaseTextFormField(
      controller: _passwordController,
      hintText: context.l10n.password,
      keyboardType: TextInputType.text,
      obscureText: true,
      validator: (value) => Validator.validatePassword(value, context),
    );
  }

  Widget _loginButton(BuildContext context) {
    return BaseButton(
      title: context.l10n.login,
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          context.push(AppRoutes.language);
        }
      },
    );
  }

  Widget _dontHaveAnAccountText(BuildContext context) {
    return Center(
      child: BaseTextRich(
        text1: context.l10n.dont_have_an_account,
        text2: context.l10n.register,
        onTap: () => context.push(AppRoutes.signup),
      ),
    );
  }
}
