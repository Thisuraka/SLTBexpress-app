import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  String? nic;
  String? passport;
  String? name;
  String? mobile;
  String? email;
  String? password;
  String? role;
  String? imageUrl;

  User(
      {this.nic,
      this.passport,
      this.name,
      this.mobile,
      this.email,
      this.password,
      this.role,
      this.imageUrl});

  factory User.fromJson(Map<String, dynamic> json) => User(
        nic: json["nic"] == null ? null : json["nic"],
        passport: json["passport"] == null ? null : json["passport"],
        name: json["name"] == null ? null : json["name"],
        mobile: json["mobile"] == null ? null : json["mobile"],
        email: json["email"] == null ? null : json["email"],
        password: json["password"] == null ? null : json["password"],
        role: json["role"] == null ? null : json["role"],
        imageUrl: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "nic": nic == null ? null : nic,
        "passport": passport == null ? null : passport,
        "name": name == null ? null : name,
        "mobile": mobile == null ? null : mobile,
        "email": email == null ? null : email,
        "password": password == null ? null : password,
        "role": role == null ? null : role,
        "imageUrl": imageUrl == null ? null : imageUrl,
      };
}
