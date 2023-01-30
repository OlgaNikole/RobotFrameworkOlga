*** Setting ***
Documentation  To valodate the login form
Library   SeleniumLibrary
Test Setup  open the browser with the Mortgage payment url
Test Teardown  Close Browser
Resource   resource.robot

#Selenium
*** Variables ***
${Error_Message_Login}  css:.alert-danger
${Shop_page_load}       css:.nav-link


*** Test Cases ***
#Validate UnSuccesseful Login

      #Fill the login Form  ${user_name}   ${invalid_password}
      #wait until element is located in the page  ${Error_Message_Login}
      #verify error message is correct

Validate Cards display in the Shoping Page
       Fill the login Form     ${user_name}   ${valid_password}
       wait until element is located in the page  ${Shop_page_load}
       Verify Card titles in the Shop page

*** Keywords ***

Fill the login Form
      [arguments]   ${user_name}    ${valid_password}
      Input Text      id:username    ${user_name}
      Input Password  id:password    ${valid_password}
      Click Button    signInBtn


wait until element is located in the page
       [arguments]   ${element}
       Wait Until Element Is Visible    ${element}

verify error message is correct
     #${result}=  Get Text  ${Error_Message_Login}
     #Should Be Equal As Strings  ${result}  Incorrect username/password. (old version)
     Element Text Should Be   ${Error_Message_Login}  Incorrect username/password.

Verify Card titles in the Shop page
 @{expectedList} =Create List       iphone X  Samsung Note 8  Nokia Edge  Blackberry
 ${elements} = Get WebElements     css:.card-title
     FOR   ${element}  IN     @{elements}
      Log   ${elements.text}

      END





