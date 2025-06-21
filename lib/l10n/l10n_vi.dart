// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class L10nVi extends L10n {
  L10nVi([String locale = 'vi']) : super(locale);

  @override
  String get login => 'Đăng nhập';

  @override
  String get register => 'Đăng ký';

  @override
  String get account => 'Tài khoản';

  @override
  String get password => 'Mật khẩu';

  @override
  String get enter_email => 'Nhập email';

  @override
  String get enter_password => 'Nhập mật khẩu';

  @override
  String get email_required => 'Email không được để trống';

  @override
  String get invalid_email => 'Email không hợp lệ';

  @override
  String get password_required => 'Mật khẩu không được để trống';

  @override
  String get password_too_short => 'Mật khẩu phải từ 8 ký tự';

  @override
  String get password_invalid_format => 'Mật khẩu phải gồm cả chữ và số';

  @override
  String get password_no_spaces => 'Mật khẩu không được chứa khoảng trắng';

  @override
  String get password_no_diacritics => 'Mật khẩu không được chứa ký tự có dấu';

  @override
  String get dont_have_an_account => 'Chưa có tài khoản?';

  @override
  String get already_have_account => 'Đã có tài khoản?';

  @override
  String get home => 'Trang chủ';

  @override
  String get search => 'Tìm kiếm';

  @override
  String get favorite => 'Yêu thích';

  @override
  String get profile => 'Hồ sơ';

  @override
  String get language => 'Ngôn ngữ';

  @override
  String get english => 'Tiếng Anh';

  @override
  String get vietnamese => 'Tiếng Việt';
}
