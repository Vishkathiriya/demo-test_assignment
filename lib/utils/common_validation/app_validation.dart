///this is a Email validation
String? validatemail(String? value) {
  String pattan =
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
      r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
      r"{0,253}[a-zA-Z0-9])?)*$";
  RegExp regExp = RegExp(pattan);
  if (value == null || value.isEmpty || !regExp.hasMatch(value)) {
    return 'Please enter valid email address';
  } else {
    return null;
  }
}

///this is a mobile validation
String? validatemobile(String? value) {
  if (value!.isEmpty) {
    return 'Please enter your mobile number';
  } else {
    return null;
  }
}

///this is a fullname Validation
String? fullnameValidate(String? value) {
  if (value!.isEmpty) {
    return 'Enter full Name';
  }

  return null;
}

/// this is userName,Email or Phone Validation
String? correctnameValidate(String? value) {
  if (value!.isEmpty) {
    return 'Enter username, email or phone';
  }

  return null;
}

///this is a usernameValidate Validation
String? userNamevalidate(String? value) {
  if (value!.isEmpty) {
    return 'Enter correct username';
  } else if (value != value.toLowerCase()) {
    return ('Enter lowerCase value');
  }

  return null;
}

/// this is a Enter password validation
String? enterpassValidate(String? value) {
  if (value!.isEmpty) {
    return 'Enter password';
  }

  return null;
}
