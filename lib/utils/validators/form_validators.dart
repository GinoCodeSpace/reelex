import '../constants/string_constants.dart';

/// Validadores de formulário reutilizáveis
class FormValidators {
  /// Valida endereço de email
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return StringConstants.pleaseEnterEmail;
    }
    // Regex mais flexível que aceita uma gama maior de emails válidos
    if (!RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$').hasMatch(value)) {
      return StringConstants.pleaseEnterValidEmail;
    }
    return null;
  }

  /// Valida senha com requisitos mínimos
  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return StringConstants.pleaseEnterPassword;
    }
    if (value.length < 6) {
      return StringConstants.passwordMinLength;
    }
    return null;
  }

  /// Valida campo obrigatório
  static String? validateRequired(String? value, String fieldName) {
    if (value == null || value.isEmpty) {
      return '${StringConstants.pleaseEnterYour} $fieldName';
    }
    return null;
  }

  /// Valida confirmação de senha
  static String? validatePasswordConfirmation(String? value, String originalPassword) {
    if (value == null || value.isEmpty) {
      return StringConstants.pleaseConfirmPassword;
    }
    if (value != originalPassword) {
      return StringConstants.passwordsDoNotMatch;
    }
    return null;
  }

  /// Valida número de telefone
  static String? validatePhone(String? value) {
    if (value == null || value.isEmpty) {
      return StringConstants.pleaseEnterPhoneNumber;
    }
    if (!RegExp(r'^[\+]?[1-9][\d]{0,15}\$').hasMatch(value.replaceAll(RegExp(r'[\s\-\(\)]'), ''))) {
      return StringConstants.pleaseEnterValidPhoneNumber;
    }
    return null;
  }

  /// Valida nome (apenas letras e espaços)
  static String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return StringConstants.pleaseEnterName;
    }
    // Regex corrigida para aceitar letras (incluindo acentos), espaços, hífens e apostrofes
    if (!RegExp(r"^[a-zA-ZÀ-ÿ\u00C0-\u017F\s'-]+$").hasMatch(value)) {
      return StringConstants.nameOnlyLettersAndSpaces;
    }
    if (value.trim().length < 2) {
      return StringConstants.nameMinLength;
    }
    return null;
  }

  /// Valida URL
  static String? validateUrl(String? value) {
    if (value == null || value.isEmpty) {
      return StringConstants.pleaseEnterUrl;
    }
    if (!RegExp(r'^https?:\/\/.+').hasMatch(value)) {
      return StringConstants.pleaseEnterValidUrl;
    }
    return null;
  }

  /// Valida idade (número entre 1 e 120)
  static String? validateAge(String? value) {
    if (value == null || value.isEmpty) {
      return StringConstants.pleaseEnterAge;
    }
    final age = int.tryParse(value);
    if (age == null) {
      return StringConstants.pleaseEnterValidNumber;
    }
    if (age < 1 || age > 120) {
      return StringConstants.pleaseEnterValidAge;
    }
    return null;
  }
}