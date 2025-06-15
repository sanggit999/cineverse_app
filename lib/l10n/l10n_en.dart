// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class L10nEn extends L10n {
  L10nEn([String locale = 'en']) : super(locale);

  @override
  String get login => 'Login';

  @override
  String get register => 'Register';

  @override
  String get account => 'Account';

  @override
  String get password => 'Password';

  @override
  String get enter_email_or_username => 'Enter email or username';

  @override
  String get enter_password => 'Enter password';

  @override
  String get dont_have_an_account => 'Don\'t have an account?';

  @override
  String get already_have_account => 'Already have an account?';

  @override
  String get home => 'Home';

  @override
  String get search => 'Search';

  @override
  String get favorite => 'Favorite';

  @override
  String get profile => 'Profile';

  @override
  String get title => 'Language';

  @override
  String get english => 'English';

  @override
  String get vietnamese => 'Vietnamese';
}
