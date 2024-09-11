package org.sample.steps;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import io.cucumber.spring.CucumberContextConfiguration;
import org.sample.config.CucumberTestContextConfiguration;
import org.springframework.boot.test.context.SpringBootTest;

@CucumberContextConfiguration
@SpringBootTest(classes = CucumberTestContextConfiguration.class)
public class StepDefs {

    @Given("the user is on the login page")
    public void userIsOnLoginPage() {
        System.out.println("the user is on the login page");
    }

    @When("the user enters valid credentials")
    public void userEntersValidCredentials() {
        System.out.println("the user enters valid credentials");
    }

    @Then("the user should be redirected to the dashboard")
    public void userIsRedirectedToDashboard() {
        System.out.println("the user should be redirected to the dashboard");
    }


}
