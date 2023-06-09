import 'package:secure_password_utility/secure_password_utility.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    final securePasswordPack = SecurePasswordGateway();
    final passwordLength = 20;
    final passcodeLength = 25;
    final password = 'KcLDoN2J^Ai#Pvw6SX4@';
    var productKey;

    setUp(() {
      productKey = SecurePasswordGateway().generateProductKey(passcodeLength);
    });

    test('Default password variable state', () {
      expect(securePasswordPack, isA<SecurePasswordGateway>());
    });
    test('Check password strength', () {
      expect(securePasswordPack.checkWeakPassword(password, passwordLength),
          isA<Future<bool>>());
    });
    test('Generate a strong password', () {
      expect(securePasswordPack.generateStrongPassword(passwordLength),
          isA<Future<String>>());
    });
    test('Confirm product key generation', () {
      expect(
          securePasswordPack.generateProductKey(passcodeLength), isA<String>());
    });
    test('Ensure the product key is no empty', () {
      expect(securePasswordPack.generateProductKey(passcodeLength), isNotEmpty);
    });
    test('Product Key', () {
      expect(productKey, contains('-'));
    });
  });
}
