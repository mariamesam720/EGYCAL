class ResetPasswordModel {
  String? newPassword;
  String? repeatPassword;
  String? email;
  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email address';
    }
    if (!value.contains('@')) return 'Please enter a valid email address';
    return null;
  }
  String? validateNewPassword(String? value) {
    if (value == null || value.isEmpty) return 'Please enter a new password';
    if (value.length < 6) {
      return 'Password must be at least 6 characters long';
    }
    return null;
  }

  String? validateRepeatPassword(String? value) {
    if (value == null || value.isEmpty) return 'Please repeat your new password';
    if (value != newPassword) return 'Passwords do not match';
    return null;
  }
  void saveEmail(String? value) => email = value;
  void saveNewPassword(String? value) => newPassword = value;
  void saveRepeatPassword(String? value) => repeatPassword = value;
}