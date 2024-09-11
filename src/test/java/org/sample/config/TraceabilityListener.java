package org.sample.config;

import com.google.gson.Gson;
import io.cucumber.plugin.ConcurrentEventListener;
import io.cucumber.plugin.event.EventPublisher;
import io.cucumber.plugin.event.TestCaseFinished;
import io.cucumber.plugin.event.TestRunFinished;

import java.io.FileWriter;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

public class TraceabilityListener implements ConcurrentEventListener {

    private Map<String, String> traceabilityData = new HashMap<>();

    @Override
    public void setEventPublisher(EventPublisher publisher) {
        publisher.registerHandlerFor(TestCaseFinished.class, this::handleTestCaseFinished);
        publisher.registerHandlerFor(TestRunFinished.class, this::exportTraceabilityData);
    }

    private void handleTestCaseFinished(TestCaseFinished event) {
        String scenarioName = event.getTestCase().getName();
        String status = event.getResult().getStatus().name();
        traceabilityData.put(scenarioName, status);
    }

    public void exportTraceabilityData(TestRunFinished event) {
        try (FileWriter writer = new FileWriter("traceability.json")) {
            writer.write(new Gson().toJson(traceabilityData));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
