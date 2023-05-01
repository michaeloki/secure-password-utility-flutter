import 'package:secure_password_utility/secure_password_utility.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    final securePasswordPack = SecurePasswordGateway();
    final passwordLength = 10;
    final passcodeLength = 25;
    final password = '#sh0klmNZa';

    setUp(() {
      // Additional setup goes here.
    });

    test('Default password variable state', () {
      expect(securePasswordPack.passwordVerdict, isFalse);
    });
    test('Check password strength', () {
      expect(securePasswordPack.checkWeakPassword(password,passwordLength), isNotNull);
    });
    test('Generate a strong password', () {
      expect(securePasswordPack.generateStrongPassword(passwordLength), isNotNull);
    });
    test('Confirm product key generation', () {
      expect(securePasswordPack.generateProductKey(passcodeLength), isNotEmpty);
    });
  });
}
