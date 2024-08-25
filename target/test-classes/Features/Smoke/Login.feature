Feature: To validate login functionality


@reg
Scenario: Validating login functionality using valid test data

Given user starts "Chrome" browser
And user launches app using url "https://adactinhotelapp.com/"
When user enters text 'reyaz0806' into textbox using xpath "//input[@name='username']"
And user enters text 'reyaz123' into textbox using xpath "//input[@name='password']"
And user clicks on button using xpath "//input[@name='login']"
Then user verify title to be "Adactin.com - Search Hotel"

@reg1
Scenario Outline: Validating login functionality using Invalid test data

Given user starts "Chrome" browser
And user launches app using url "https://adactinhotelapp.com/"
When user enters text '<username>' into textbox using xpath "//input[@name='username']"
And user enters text '<password>' into textbox using xpath "//input[@name='password']"
And user clicks on button using xpath "//input[@name='login']"
Then user verify title to be '<exp title>'

Examples:
|username |password|exp title|
|reyaz0806|reyaz89|Adactin.com - Hotel Reservation System|
|reyaz086|reyaz123|Adactin.com - Hotel Reservation System|
|reyaz08|reyaz89|Adactin.com - Hotel Reservation System|



 
 