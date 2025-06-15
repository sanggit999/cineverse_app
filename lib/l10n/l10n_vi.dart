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
  String get enter_email_or_username => 'Nhập email hoặc tên đăng nhập';

  @override
  String get enter_password => 'Nhập mật khẩu';

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
  String get title => 'Ngôn ngữ';

  @override
  String get english => 'Tiếng Anh';

  @override
  String get vietnamese => 'Tiếng Việt';
}
