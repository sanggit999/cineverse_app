class UserEntity {
  final String userId;
  final String email;
  final String username;
  final String name;
  final String avatar;
  final int gender;

  UserEntity({
    required this.userId,
    required this.username,
    required this.name,
    required this.email,
    required this.avatar,
    required this.gender,
  });
}
