import org.junit.Assert;
import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.Dimension;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;

public class SeleTest {
private WebDriver webDriver;
WebElement txtUserName, txtPass, btnLogin, btnsignUp, slNhom, txtLuong, slPhuongthuc, txtSL, btnFee;
@Test
public void testLoginSuccess() {
    System.setProperty("webdriver.gecko.driver","/Users/APPLE/Downloads/geckodriver");
    webDriver = new FirefoxDriver();
    webDriver.get("http://localhost:8989/calculate_tax/login");
    webDriver.manage().window().setSize(new Dimension(1050, 840));

    txtUserName = webDriver.findElement(By.name("name"));
    txtPass = webDriver.findElement(By.name("password"));
    btnLogin = webDriver.findElement(By.id("btn-login"));

    txtUserName.sendKeys("datvl");
    txtPass.sendKeys("1");
    btnLogin.click();
    Assert.assertEquals(webDriver.getCurrentUrl(), "http://localhost:8989/calculate_tax/");

}
@Test
public void testLoginUserNull() {
    System.setProperty("webdriver.gecko.driver","/Users/APPLE/Downloads/geckodriver");
    webDriver = new FirefoxDriver();
    webDriver.get("http://localhost:8989/calculate_tax/login");
    webDriver.manage().window().setSize(new Dimension(1050, 840));

    txtUserName = webDriver.findElement(By.name("name"));
    txtPass = webDriver.findElement(By.name("password"));
    btnLogin = webDriver.findElement(By.id("btn-login"));

    txtUserName.sendKeys("");
    txtPass.sendKeys("1");
    btnLogin.click();
    Assert.assertEquals(webDriver.getCurrentUrl(), "http://localhost:8989/calculate_tax/");

}

@Test
public void testLoginTxtUserFail() {
    System.setProperty("webdriver.gecko.driver","/Users/APPLE/Downloads/geckodriver");
    webDriver = new FirefoxDriver();
    webDriver.get("http://localhost:8989/calculate_tax/login");
    webDriver.manage().window().setSize(new Dimension(1050, 840));

    txtUserName = webDriver.findElement(By.name("name"));
    txtPass = webDriver.findElement(By.name("password"));
    btnLogin = webDriver.findElement(By.id("btn-login"));

    txtUserName.sendKeys("datvl1234");
    txtPass.sendKeys("1");
    btnLogin.click();
    Assert.assertEquals(webDriver.getCurrentUrl(), "http://localhost:8989/calculate_tax/");

}


    @Test
    public void testLoginTxtPassFail() {
        System.setProperty("webdriver.gecko.driver","/Users/APPLE/Downloads/geckodriver");
        webDriver = new FirefoxDriver();
        webDriver.get("http://localhost:8989/calculate_tax/login");
        webDriver.manage().window().setSize(new Dimension(1050, 840));

        txtUserName = webDriver.findElement(By.name("name"));
        txtPass = webDriver.findElement(By.name("password"));
        btnLogin = webDriver.findElement(By.id("btn-login"));

        txtUserName.sendKeys("datvl");
        txtPass.sendKeys("1213");
        btnLogin.click();
        Assert.assertEquals(webDriver.getCurrentUrl(), "http://localhost:8989/calculate_tax/");
    }


    @Test
    public void testFeeSucess() {
        System.setProperty("webdriver.gecko.driver","/Users/APPLE/Downloads/geckodriver");
        webDriver = new FirefoxDriver();
        webDriver.get("http://localhost:8989/calculate_tax/calculate-fee/1");
        webDriver.manage().window().setSize(new Dimension(1050, 840));

        slNhom = webDriver.findElement(By.name("nhom"));
        txtLuong = webDriver.findElement(By.name("muc_dong"));
        slPhuongthuc = webDriver.findElement(By.name("phuong_thuc"));
        txtSL = webDriver.findElement(By.name("sl"));
        btnFee = webDriver.findElement(By.id("bnt-fee"));

        slNhom.sendKeys("4");
        txtLuong.sendKeys("10000000");
        slPhuongthuc.sendKeys("12");
        txtSL.sendKeys("3");
        btnFee.click();
//        Assert.assertEquals(webDriver.getCurrentUrl(), "http://localhost:8989/calculate_tax/");
    }

}
