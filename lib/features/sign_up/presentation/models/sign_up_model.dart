class SignUpModel {
  String? firstName;
  String? secondName;
  String? day;
  String? month;
  String? year;
  String? email;
  String? password;
  String? repeatPassword;
  final List<String> days = List.generate(31, (index) => (index + 1).toString());
  final List<String> months = [
    'January', 'February', 'March', 'April', 'May', 'June',
    'July', 'August', 'September', 'October', 'November', 'December'
  ];
  final List<String> years = List.generate(100, (index) => (DateTime.now().year - index).toString());

  String? validateFirstName(String? value) {
    if (value == null || value.isEmpty) return 'Please enter your first name';
    return null;
  }

  String? validateSecondName(String? value) {
    if (value == null || value.isEmpty) return 'Please enter your second name';
    return null;
  }

  String? validateDay(String? value) {
    if (value == null || value.isEmpty) return 'Please select a day';
    return null;
  }

  String? validateMonth(String? value) {
    if (value == null || value.isEmpty) return 'Please select a month';
    return null;
  }

  String? validateYear(String? value) {
    if (value == null || value.isEmpty) return 'Please select a year';
    return null;
  }
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
  void savePassword(String? value) => password = value;
  String? validateRepeatPassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please repeat your password';
    }
    if (value != password) {
      return 'Passwords do not match';
    }
    return null;
  }
  
  void saveEmail(String? value) => email = value;
  
  void saveRepeatPassword(String? value) => repeatPassword = value;
  void saveFirstName(String? value) => firstName = value;
  void saveSecondName(String? value) => secondName = value;
}