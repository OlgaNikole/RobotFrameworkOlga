*** Setting ***
Documentation  A resource file with reusable keywords and variables

Library   SeleniumLibrary

*** Variables ***

${user_name}          rahulshettyacademy
${invalid_password}   123123
${valid_password}     learning
${url}     https://rahulshettyacademy.com/loginpagePractise/


*** Keywords ***
open the browser with the Mortgage payment url
     Create Webdriver  Chrome  executable_path=/Users/olgachmikhun/Downloads/chromedriver
     Go To  ${url}

Close Browser session
        Close Browser
