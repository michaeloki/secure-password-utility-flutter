import 'package:secure_password_utility/secure_password_utility.dart';

void main() {
  // SecurePasswordGateway().checkWeakPassword('@sh0klmNZa',10).then((e) => {
  //   print('Strong password is $e')
  // });

  // createPassword();
  // createProductKey(20);
}


Future<dynamic> createPassword() async {
  var createdPassword = '';
  var passwd = SecurePasswordGateway().generateStrongPassword(14);
  await passwd.then((value) => createdPassword = value);
  print('generated strong password is $createdPassword');
}

String createProductKey(int passwordLength) {
  var res = SecurePasswordGateway().generateProductKey(passwordLength);
  print('PRODUCT KEY IS::::: $res');
  return res;
}
