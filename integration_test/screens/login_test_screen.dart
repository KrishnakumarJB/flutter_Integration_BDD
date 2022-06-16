import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

abstract class LoginTestScreen {
  static Finder loginScreenFinder = find.text('WIO');
  static Finder emailFieldFinder =  find.byKey(const Key('emailAddressFieldKey'));
  static Finder passwordFieldFinder = find.byKey(const Key('passwordFieldKey'));
  static Finder loginButtonFinder = find.byKey(const Key('loginButtonKey'));
  static Finder homeScreenFinder = find.byKey(const Key('homeScreenTxt'));
}
