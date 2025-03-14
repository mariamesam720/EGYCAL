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
    return null;
  }

  void saveEmail(String? value) => email = value;
  void savePassword(String? value) => password = value;
}