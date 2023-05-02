import 'package:secure_password_utility/src/utils/password_engine.dart';

class SecurePasswordGateway {
  Future<bool> checkWeakPassword(String password, int passwordLength) {
    return weakPasswordChecker(password, passwordLength);
  }

  Future<String> generateStrongPassword(int passwordLength) {
    return strongPasswordGenerator(passwordLength);
  }

  String generateProductKey(int passcodeLength) {
    return productKeyGenerator(passcodeLength);
  }
}
