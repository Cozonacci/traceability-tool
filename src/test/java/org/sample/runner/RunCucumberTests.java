package org.sample.runner;

import org.junit.platform.suite.api.*;

import static io.cucumber.junit.platform.engine.Constants.*;

@Suite
@SelectClasspathResource("features")
@ConfigurationParameter(key = PLUGIN_PROPERTY_NAME, value = "json:target/cucumber.json, org.sample.config.TraceabilityListener")
@ConfigurationParameter(key = GLUE_PROPERTY_NAME, value = "org.sample")
public class RunCucumberTests {
}
