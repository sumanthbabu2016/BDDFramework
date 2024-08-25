package steps;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.edge.EdgeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

import io.cucumber.java.After;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class StepDefination {
	WebDriver driver;

	@Given("user starts {string} browser")
	public void user_starts_browser(String browserName) {
		if (browserName.equalsIgnoreCase("Chrome")) {
			driver = new ChromeDriver();
		} else if (browserName.equalsIgnoreCase("edge")) {
			driver = new EdgeDriver();
		} else if (browserName.equalsIgnoreCase("Firefox")) {
			driver = new FirefoxDriver();
		}
	}

	@Given("user launches app using url {string}")
	public void user_launches_app_using_url(String url) {
		driver.get(url);
		driver.manage().window().maximize();

	}

	@When("user enters text {string} into textbox using xpath {string}")
	public void user_enters_text_into_textbox_using_xpath(String string, String Xpath) {
		driver.findElement(By.xpath(Xpath)).sendKeys(string);
	}

	@When("user clicks on button using xpath {string}")
	public void user_clicks_on_button_using_xpath(String string) {
		driver.findElement(By.xpath(string)).click();
	}

	@Then("user verify title to be {string}")
	public void user_verify_title_to_be(String string) {
		Assert.assertEquals(string, driver.getTitle());

	}
	
		

	@After
	public void teardown() throws InterruptedException {
		Thread.sleep(3000);
		driver.quit();
	}

}
