// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'runner.dart';

// **************************************************************************
// GherkinSuiteTestGenerator
// **************************************************************************

class _CustomGherkinIntegrationTestRunner extends GherkinIntegrationTestRunner {
  _CustomGherkinIntegrationTestRunner(
    TestConfiguration configuration,
    Future<void> Function(World) appMainFunction,
  ) : super(configuration, appMainFunction);

  @override
  void onRun() {
    testFeature0();
  }

  void testFeature0() {
    runFeature(
      'Login tests:',
      <String>['@all'],
      () {
        runScenario(
          'Login with invalid user credentials',
          <String>['@all'],
          (TestDependencies dependencies) async {
            await runStep(
              'Given user navigates to login screen',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'When enter invalid email in email field',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'And enter invalid password in password field',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'And press login button',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'Then verify user login failed',
              <String>[],
              null,
              dependencies,
            );
          },
          onBefore: () async => onBeforeRunFeature(
            'Login tests',
            <String>['@all'],
          ),
          onAfter: null,
        );

        runScenario(
          'Login with valid user credentials',
          <String>['@all'],
          (TestDependencies dependencies) async {
            await runStep(
              'Given user navigates to login screen',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'When enter email in email field',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'And enter password in password field',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'And press login button',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'Then verify user logged in successfully',
              <String>[],
              null,
              dependencies,
            );
          },
          onBefore: null,
          onAfter: () async => onAfterRunFeature(
            'Login tests',
          ),
        );
      },
    );
  }
}

void executeTestSuite(
  TestConfiguration configuration,
  Future<void> Function(World) appMainFunction,
) {
  _CustomGherkinIntegrationTestRunner(configuration, appMainFunction).run();
}
