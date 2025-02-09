class Validator {
  /// Method to validate the name
  nameValidator(var value) {
    if (value == null || value.isEmpty) {
      return "This field cannot be empty";
    }
    if (value.contains(RegExp(r'[0-9]'))) {
      return "Name cannot contain numbers";
    } else {
      return null;
    }
  }

  /// Method to validate the email
  emailValidator(var value) {
    if (value == null || value.isEmpty) {
      return "This field cannot be empty";
    }
    if (!value.contains('@')) {
      return "Please enter a valid email address";
    } else {
      return null;
    }
  }
}

/// Method to validate the password
passwordValidator(var value) {
  if (value == null || value.isEmpty) {
    return "This field cannot be empty";
  }
  if (value.length < 6) {
    return "Password must be at least 6 characters";
  } else {
    return null;
  }
}

/// Method to validate the confirm password
confirmPassValidator(var value, var secondValue) {
  if (value == null || value.isEmpty) {
    return 'This field cannot be empty';
  }
  if (value != secondValue) {
    return "Password does not match";
  } else {
    return null;
  }
}
