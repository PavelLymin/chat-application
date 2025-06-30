class Validator {
  static final RegExp _emailRegex = RegExp(
    r'^[a-zA-Z0-9. _%+-]+@[a-zA-Z0-9. -]+\.[a-zA-Z]{2,}$',
  );

  static final RegExp _passwordRegex = RegExp(
    r'^^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[^\w\s]).{6,}',
  );

  static String? emptyCheck(String value) {
    if (value.isEmpty) return 'Обязательное поле';
    return null;
  }

  static String? emailCheck(String value) {
    if (value.isEmpty) return 'Обязательное поле';
    if (!_emailRegex.hasMatch(value)) return 'E-mail адрес некорректный';
    return null;
  }

  static String? passwordCheck(String value) {
    if (value.isEmpty) return 'Обязательное поле';
    if (!_passwordRegex.hasMatch(value)) return 'Слабый пароль';
    return null;
  }
}
