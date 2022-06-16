import 'package:flutter_test/flutter_test.dart';
import 'package:gherkin/gherkin.dart';
import '../constants/user_data.dart';
import '../screens/login_test_screen.dart';
import '../utils/scenario_context.dart';
import '../utils/widget_tester_utils.dart';

class LoginTestSteps {
  static Iterable<StepDefinitionGeneric<ScenarioContext>> get steps => [
        given<ScenarioContext>(RegExp(r'user navigates to login screen'),
            (context) async {
          final tester = context.world.rawAppDriver;
          await tester.pumpUntilVisible(LoginTestScreen.loginScreenFinder);
        }),
        when<ScenarioContext>(RegExp(r'enter email in email field'),
            (context) async {
          final tester = context.world.rawAppDriver;
          await tester.enterTextWithPump(
              LoginTestScreen.emailFieldFinder, UserData.testEmail);
        }),
        and<ScenarioContext>(RegExp(r'enter password in password field'),
            (context) async {
          final tester = context.world.rawAppDriver;
          await tester.enterTextWithPump(
              LoginTestScreen.passwordFieldFinder, UserData.testPassword);
        }),
        and<ScenarioContext>(RegExp(r'press login button'), (context) async {
          final tester = context.world.rawAppDriver;
          await tester.tapWithPump(LoginTestScreen.loginButtonFinder);
        }),
        then<ScenarioContext>(RegExp(r'verify user logged in successfully'),
            (context) async {
          final tester = context.world.rawAppDriver;
          await tester.pumpAndSettle();
          expect(find.text('Hello wiotest@gmail.com'), findsOneWidget);
        }),
        when<ScenarioContext>(RegExp(r'enter invalid email in email field'),
            (context) async {
          final tester = context.world.rawAppDriver;
          await tester.enterTextWithPump(
              LoginTestScreen.emailFieldFinder, UserData.invalidEmail);
        }),
        and<ScenarioContext>(
            RegExp(r'enter invalid password in password field'),
            (context) async {
          final tester = context.world.rawAppDriver;
          await tester.enterTextWithPump(
              LoginTestScreen.passwordFieldFinder, UserData.testPassword);
        }),
        then<ScenarioContext>(RegExp(r'verify user login failed'),
            (context) async {
          final tester = context.world.rawAppDriver;
          await Future.delayed(const Duration(seconds: 1));
          await tester.pumpAndSettle();
          expect(find.textContaining('not found.'), findsOneWidget);
        }),
      ];
}
