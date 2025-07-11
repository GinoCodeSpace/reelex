import '../imports/common_libs.dart';

/// Validadores de formulário reutilizáveis
class FormValidators {
  /// Valida endereço de email
  static String? validateEmail(String? value, BuildContext context) {
    if (value == null || value.isEmpty) {
      return StringConstants.pleaseEnterEmail(context);
    }
    // Regex mais flexível que aceita uma gama maior de emails válidos
    if (!RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$').hasMatch(value)) {
      return StringConstants.pleaseEnterValidEmail(context);
    }
    return null;
  }

  /// Valida senha com requisitos mínimos
  static String? validatePassword(String? value, BuildContext context) {
    if (value == null || value.isEmpty) {
      return StringConstants.pleaseEnterPassword(context);
    }
    if (value.length < 6) {
      return StringConstants.passwordMinLength(context);
    }
    return null;
  }

  /// Valida campo obrigatório
  static String? validateRequired(String? value, String fieldName, BuildContext context) {
    if (value == null || value.isEmpty) {
      return '${StringConstants.pleaseEnterYour(context)} $fieldName';
    }
    return null;
  }

  /// Valida confirmação de senha
  static String? validatePasswordConfirmation(String? value, String originalPassword, BuildContext context) {
    if (value == null || value.isEmpty) {
      return StringConstants.pleaseConfirmPassword(context);
    }
    if (value != originalPassword) {
      return StringConstants.passwordsDoNotMatch(context);
    }
    return null;
  }

  /// Valida número de telefone
  static String? validatePhone(String? value, BuildContext context) {
    if (value == null || value.isEmpty) {
      return StringConstants.pleaseEnterPhoneNumber(context);
    }
    if (!RegExp(r'^[\+]?[1-9][\d]{0,15}\$').hasMatch(value.replaceAll(RegExp(r'[\s\-\(\)]'), ''))) {
      return StringConstants.pleaseEnterValidPhoneNumber(context);
    }
    return null;
  }

  /// Valida nome (apenas letras e espaços)
  static String? validateName(String? value, BuildContext context) {
    if (value == null || value.isEmpty) {
      return StringConstants.pleaseEnterName(context);
    }
    // Regex corrigida para aceitar letras (incluindo acentos), espaços, hífens e apostrofes
    if (!RegExp(r"^[a-zA-ZÀ-ÿ\u00C0-\u017F\s'-]+$").hasMatch(value)) {
      return StringConstants.nameOnlyLettersAndSpaces(context);
    }
    if (value.trim().length < 2) {
      return StringConstants.nameMinLength(context);
    }
    return null;
  }

  /// Valida URL
  static String? validateUrl(String? value, BuildContext context) {
    if (value == null || value.isEmpty) {
      return StringConstants.pleaseEnterUrl(context);
    }
    if (!RegExp(r'^https?:\/\/.+').hasMatch(value)) {
      return StringConstants.pleaseEnterValidUrl(context);
    }
    return null;
  }

  /// Valida idade (número entre 1 e 120)
  static String? validateAge(String? value, BuildContext context) {
    if (value == null || value.isEmpty) {
      return StringConstants.pleaseEnterAge(context);
    }
    final age = int.tryParse(value);
    if (age == null) {
      return StringConstants.pleaseEnterValidNumber(context);
    }
    if (age < 1 || age > 120) {
      return StringConstants.pleaseEnterValidAge(context);
    }
    return null;
  }
}