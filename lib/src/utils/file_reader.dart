import 'dart:io';
import 'dart:convert';
import '../constants.dart';

bool findWeakPasswords(String receivedPassword) {
  var passwordStatus = false;
  File(filePath)
      .openRead()
      .transform(utf8.decoder)
      .transform(LineSplitter())
      .forEach((text) => {
            if (text.toLowerCase().contains(receivedPassword.toLowerCase()))
              {passwordStatus = true}
          });
  return passwordStatus;
}
