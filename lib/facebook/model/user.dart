class User {
  final String fullName;
  final String profileImageUrl;

  User({required this.fullName, required this.profileImageUrl});

  static User currentUser = User(
    fullName: "Omar Fares Nawar",
    profileImageUrl: "https://randomuser.me/api/portraits/men/32.jpg",
  );
}
