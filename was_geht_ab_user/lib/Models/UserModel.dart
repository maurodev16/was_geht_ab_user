class UserModel {
  String? id;
  String? logoUrl;
  String? name;
  String? email;
  String? password;
  String? token;
  bool? isCompany;
  String? role;
  UserModel({
    this.id,
    this.logoUrl,
    this.name,
    this.email,
    this.password,
    this.token,
    this.isCompany,
    this.role,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['userId'],
      logoUrl: json['logo_url'],
      name: json['name'],
      email: json['email'],
      password: json['password'],
      token: json['token'],
      isCompany: json['is_company'],
      role: json['role'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'userId': id,
      'name': name,
      'logo_url:': logoUrl,
      'email': email,
      'password': password,
      'token': token,
      'is_company': isCompany,
      'role': role,
    };
  }
}
