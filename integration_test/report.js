var reporter = require('cucumber-html-reporter');

var options = {
        theme: 'bootstrap',
        jsonFile: 'integration_test/gherkin/reports/output/report_0.json',
        output: 'integration_test/gherkin/reports/cucumber_report.html',
        reportSuiteAsScenarios: true,
        scenarioTimestamp: true,
        launchReport: true,
    };

reporter.generate(options);