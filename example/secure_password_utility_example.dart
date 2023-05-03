import 'package:secure_password_utility/secure_password_utility.dart';

void main() {
  checkPasswordStrength('KcLDoN2J^Ai#Pvw6SX4@', 20);
  //createPassword(14);
  //createProductKey(20);
}

//Check the strength of your password. It returns a boolean
Future<bool> checkPasswordStrength(String password, int passwordLength) async {
  var passcodeStrength = false;
  await SecurePasswordGateway()
      .checkWeakPassword(password, passwordLength)
      .then((value) => {passcodeStrength = value});
  print('Strong password is $passcodeStrength');
  return passcodeStrength;
}

//Create a new password with a certain length
Future<dynamic> createPassword(int passwordLength) async {
  var createdPassword = '';
  await SecurePasswordGateway()
      .generateStrongPassword(passwordLength)
      .then((value) => createdPassword = value);
  print('generated strong password is $createdPassword');
  return createdPassword;
}

String createProductKey(int productKeyLength) {
  var res = SecurePasswordGateway().generateProductKey(productKeyLength);
  print('PRODUCT KEY IS::::: $res');
  return res;
}
