import 'dart:io';
import '../constants.dart';

var passwordStatus = false;
var receivedPassword = '';
Future<bool> findWeakPasswords(String rawPassword) async {
  var input = await File(filePath).readAsLines();
  input.forEach((value) => {
        if (rawPassword
                .toLowerCase()
                .trim()
                .contains(value.toLowerCase().trim()) &&
            value.length >= 3)
          {passwordStatus = true}
      });
  return passwordStatus;
}
