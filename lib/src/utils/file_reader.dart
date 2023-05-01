import '../../assets/dictionary.dart';

bool findWeakPasswords(String receivedPassword) {
    var passwordStatus = false;
    common_passwords.forEach((element) {
        if(receivedPassword.toLowerCase().contains(element.toLowerCase())){
            passwordStatus = true;
        }
    });
    return passwordStatus;
}
