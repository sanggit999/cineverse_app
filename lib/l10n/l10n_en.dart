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
  String get enter_email => 'Enter email';

  @override
  String get enter_password => 'Enter password';

  @override
  String get email_required => 'Email is required';

  @override
  String get invalid_email => 'Invalid email format';

  @override
  String get password_required => 'Password is required';

  @override
  String get password_too_short => 'Password must be at least 8 characters';

  @override
  String get password_invalid_format =>
      'Password must contain both letters and numbers';

  @override
  String get password_no_spaces => 'Password must not contain spaces';

  @override
  String get password_no_diacritics =>
      'Password must not contain accented characters';

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
  String get language => 'Language';

  @override
  String get english => 'English';

  @override
  String get vietnamese => 'Vietnamese';
}
