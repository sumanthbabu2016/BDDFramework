Feature: To validate user registration form 

@abcd
Scenario: To validate user registration form with valid data

Given user starts "firefox" browser
And user launches app using url "https://adactinhotelapp.com/"

When user clicks on Registration link using xpath "//a[text()='New User Register Here']"
|Divya2019|Divya2019@|Divya2019@|Bandaru Divya|india|
And user clicks on button using xpath "//input[@name='tnc_box']"
And user clicks on button using xpath "//input[@name='submit']"
                                                                                                                                                                                    

@xyz
Scenario: To validate user registration form with valid data using data map

Given user starts "Chrome" browser
And user launches app using url "https://adactinhotelapp.com/"
When user clicks on Registration link using xpath "//a[text()='New User Register Here']"
|username|password|confirm password|email|fullname|captcha|
|Divya2019|Divya2019@|Divya2019@|Bandaru Divya|india|
And user clicks on button using xpath "//input[@name='tnc_box']"
And user clicks on button using xpath "//input[@name='submit']"
                                                                                                                                                                                    










