class UserSignupReq {
  final String? email;
  final String? password;
  final String? username;
  final String? name;
  final String? avatar;
  final int? gender;

  const UserSignupReq({
     this.email,
     this.password,
     this.username,
     this.name,
     this.avatar,
     this.gender,
  });
}
