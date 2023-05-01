This password utility encourages the use of strong passwords in flutter apps.

To install this package, run npm i secure-password-utility.

When you call WeakPasswordChecker you will get a boolean value.

Weak passwords like password123 or common words will also return false.

The WeakPasswordChecker function will validate your input by ensuring that the password length is more than 9. It also confirms that the input contains a number and the combination of a special character,lowercase and uppercase.

Once you display the conditions in your UI, this function will enforce the validation.

## Usage

A simple usage example:

```dart
import 'package:secure_password_utility/secure_password_utility.dart';

main() {
  var awesome = new Awesome();
}

// Validate password strength Syntax: securePasswordUtility.WeakPasswordChecker('yourSamplePassword',lengthOfPasswordString);
// N.B. Ensure the length of the password you want to validate is at least 10-characters long.

// Generate a strong password Syntax: securePasswordUtility.CreateStrongPassword(lengthOfPasswordString);
// N.B. The password length must be more than 12.

// Generate a product key Syntax: securePasswordUtility.CreateStrongPassword(lengthOfPasswordString); 
// N.B. The password length must be a multiple of 4 or 5 between 16 and 100 e.g. 16 or 25
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: http://example.com/issues/replaceme
