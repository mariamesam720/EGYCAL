class ChangePasswordModel {
  String? oldPassword;
  String? newPassword;
  String? repeatNewPassword;

  ChangePasswordModel({
    this.oldPassword,
    this.newPassword,
    this.repeatNewPassword,
  });

  String? validateOldPassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your old password';
    }
    return null;
  }

  String? validateNewPassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a new password';
    }
    if (value.length < 6) {
      return 'Password must be at least 6 characters';
    }
    return null;
  }

  String? validateRepeatPassword(String? value) {
    if (value != newPassword) {
      return 'Passwords do not match';
    }
    return null;
  }
  void saveOldPassword(String? value) {
    oldPassword = value?.trim();
  }

  void saveNewPassword(String? value) {
    newPassword = value?.trim();
  }

  void saveRepeatPassword(String? value) {
    repeatNewPassword = value?.trim();
  }
  bool isValid() {
    return oldPassword != null &&
        oldPassword!.isNotEmpty &&
        newPassword != null &&
        newPassword!.isNotEmpty &&
        repeatNewPassword != null &&
        repeatNewPassword!.isNotEmpty &&
        newPassword == repeatNewPassword;
  }
}
