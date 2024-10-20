class AppUser {
  final String uid;
  final String email;
  final String name;

  AppUser({required this.uid, required this.email, required this.name});

  //todo: convert app to json
  Map<String, dynamic> toJson() {
    return {
      'uid': uid,
      'email': email,
      'name': name,
    };
  }

  //todo: convert json to app user
  factory AppUser.fromJson(Map<String, dynamic> jsonUser) {
    return AppUser(
        uid: jsonUser['uid'], email: jsonUser['email'], name: jsonUser['name']);
  }
}
