*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}          https://www.tutorialspoint.com/index.htm
${BROWSER}      Chrome
${USERNAME}     testuser
${PASSWORD}     testpassword
${LOGIN_XPATH}  /html/body/section/div/main/form/div[1]/input  # Update with actual XPath for the username field
${PASSWORD_XPATH}  /html/body/section/div/main/form/div[1]/input  # Update with actual XPath for the password field
${LOGIN_BUTTON}  /html/body/section/div/main/form/button  # Update with actual XPath for the login button
${WAIT_TIME}    10  # Time to wait in seconds

*** Test Cases ***
User Should Be Able to Login
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window  # Maximize the browser window
    Sleep    ${WAIT_TIME}
    Click Link    /html/body/header/nav/ul/li[5]/a
    Sleep    5
    Input Username And Password
    Sleep    5
    Click Login Button
    [Teardown]    Close Browser

*** Keywords ***
Input Username And Password
    Input Text    ${LOGIN_XPATH}    ${USERNAME}
    Input Text    ${PASSWORD_XPATH}    ${PASSWORD}

Click Login Button
    Click Button    ${LOGIN_BUTTON}
