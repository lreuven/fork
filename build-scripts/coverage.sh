#!/bin/bash

set -e

./gradlew -q clean jacocoMergedReport
cd build-scripts
java -cp codacy-coverage-reporter-assembly-1.0.5.jar com.codacy.CodacyCoverageReporter -l Java -r ../build/reports/jacoco/jacocoMergedReport/jacocoMergedReport.xml
