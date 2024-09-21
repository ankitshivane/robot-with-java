*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.selenium.dev/documentation/webdriver/
${WAIT_TIME}    10  # Time to wait in seconds

*** Test Cases ***
Login Test
    [Documentation]    This test case verifies the page title and clicks on the Downloads link.
    Open Browser    ${URL}    Chrome
    Maximize Browser Window  # Maximize the browser window
    Sleep    ${WAIT_TIME}  # Wait for a specified time (5 seconds)
    Title Should Be    WebDriver | Selenium  # Validate the page title
    Click Link    Downloads  # Click on the Downloads link (using link text)
    Close Browser