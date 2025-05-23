class LoginModel {
  String? email;
  String? password;

  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email address';
    }
    if (!value.contains('@')) return 'Please enter a valid email address';
    return null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) return 'Please enter your password';
    if (value.length < 6) {
      return 'Password must be at least 6 characters long';
    }
    return null;
  }

  void saveEmail(String? value) => email = value;
  void savePassword(String? value) => password = value;
}
// class LoginModel {
//   String? email;
//   String? password;

//   String? validateEmail(String? value) {
//     if (value == null || value.isEmpty) {
//       return 'Please enter your email';
//     }
//     return null;
//   }

//   String? validatePassword(String? value) {
//     if (value == null || value.isEmpty) {
//       return 'Please enter your password';
//     }
//     return null;
//   }

//   bool isValid() {
//     return email != null && password != null;
//   }

//   Map<String, dynamic> toJson() => {
//     'email': email,
//     'password': password,
//   };
// }