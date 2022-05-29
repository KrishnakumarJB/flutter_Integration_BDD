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
      'Home screen tests:',
      <String>['@all'],
      () {
        runScenario(
          'Counter single test',
          <String>['@all', '@counter'],
          (TestDependencies dependencies) async {
            await runStep(
              'Given user on the home page',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'When user clicks on the counter button 5 times',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'Then counter value is "5"',
              <String>[],
              null,
              dependencies,
            );
          },
          onBefore: () async => onBeforeRunFeature(
            'Home screen tests',
            <String>['@all'],
          ),
          onAfter: null,
        );

        runScenario(
          'Counter multiple test Examples: (1)',
          <String>['@all', '@counter-multiple'],
          (TestDependencies dependencies) async {
            await runStep(
              'Given user on the home page',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'When user clicks on the counter button 1 times',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'Then counter value is "1"',
              <String>[],
              null,
              dependencies,
            );
          },
          onBefore: null,
          onAfter: null,
        );

        runScenario(
          'Counter multiple test Examples: (2)',
          <String>['@all', '@counter-multiple'],
          (TestDependencies dependencies) async {
            await runStep(
              'Given user on the home page',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'When user clicks on the counter button 2 times',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'Then counter value is "2"',
              <String>[],
              null,
              dependencies,
            );
          },
          onBefore: null,
          onAfter: null,
        );

        runScenario(
          'Counter multiple test Examples: (3)',
          <String>['@all', '@counter-multiple'],
          (TestDependencies dependencies) async {
            await runStep(
              'Given user on the home page',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'When user clicks on the counter button 3 times',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'Then counter value is "3"',
              <String>[],
              null,
              dependencies,
            );
          },
          onBefore: null,
          onAfter: null,
        );

        runScenario(
          'Counter multiple test Examples: (4)',
          <String>['@all', '@counter-multiple'],
          (TestDependencies dependencies) async {
            await runStep(
              'Given user on the home page',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'When user clicks on the counter button 4 times',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'Then counter value is "4"',
              <String>[],
              null,
              dependencies,
            );
          },
          onBefore: null,
          onAfter: null,
        );

        runScenario(
          'Counter multiple test Examples: (5)',
          <String>['@all', '@counter-multiple'],
          (TestDependencies dependencies) async {
            await runStep(
              'Given user on the home page',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'When user clicks on the counter button 5 times',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'Then counter value is "5"',
              <String>[],
              null,
              dependencies,
            );
          },
          onBefore: null,
          onAfter: () async => onAfterRunFeature(
            'Home screen tests',
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
