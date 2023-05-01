import 'package:secure_password_utility/secure_password_utility.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    final weakPasswordChecker = SecurePasswordGateway();

    setUp(() {
      // Additional setup goes here.
    });

    test('Default password variable state', () {
      expect(weakPasswordChecker.passwordVerdict, isFalse);
    });
  });
}
