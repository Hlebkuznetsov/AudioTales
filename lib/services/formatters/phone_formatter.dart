import 'package:flutter/services.dart';

class UAPhoneFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    String phoneNumber = newValue.text;
    String phoneNumberOld = oldValue.text;

    if (phoneNumber.length < 6) {
      phoneNumber = '+380 (';
    }

    List<String> countDigits() {
      final List<String> splitedPhoneNumber = phoneNumber.split('');
      final List<String> countDigits = splitedPhoneNumber
          .where((element) => element.contains(RegExp(r'^[0-9]+$')))
          .toList();

      return countDigits;
    }

    if (countDigits().length == 5 &&
        phoneNumberOld.length < phoneNumber.length) {
      phoneNumber += ') ';
    }

    if (countDigits().length == 5 &&
        phoneNumberOld.length > phoneNumber.length) {
      if (phoneNumber.contains(')')) {
        phoneNumber = phoneNumber.substring(0, phoneNumber.length - 1);
      }
    }

    if (phoneNumber.length == 9 && phoneNumberOld.length == 11) {
      if (phoneNumber.contains(')') && phoneNumberOld.contains(')')) {
        phoneNumber += ' ';
      }
    }

    if (phoneNumber.length == 8 && phoneNumberOld.length == 10) {
      if (!phoneNumber.contains(')') && phoneNumberOld.contains(')')) {
        phoneNumber = phoneNumber.substring(0, phoneNumber.length - 1);
      }
    }

    if (countDigits().length == 8 &&
        phoneNumber.length > phoneNumberOld.length) {
      phoneNumber += ' ';
    }

    if (countDigits().length == 8 &&
        phoneNumber.length == 13 &&
        phoneNumberOld.length == 14) {
      phoneNumber = phoneNumber.substring(0, phoneNumber.length - 1);
    }

    if (countDigits().length == 10 &&
        phoneNumber.length > phoneNumberOld.length) {
      phoneNumber += ' ';
    }

    if (countDigits().length == 10 &&
        phoneNumber.length == 16 &&
        phoneNumberOld.length == 17) {
      phoneNumber = phoneNumber.substring(0, phoneNumber.length - 1);
    }

    return TextEditingValue(
        text: phoneNumber,
        selection: TextSelection.collapsed(
          offset: phoneNumber.length,
        ));
  }
}
