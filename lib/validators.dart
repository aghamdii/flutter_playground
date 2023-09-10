class Validators {
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return "Enter a value";
    } else if (!value.contains('@')) {
      return "Enter an email";
    } else {
      return null;
    }
  }
}
