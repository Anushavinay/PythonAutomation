*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary
Variables     /home/anusha/PycharmProjects/Adero/testsuites/variables/variables.yaml

*** Keywords ***
Home Page
    [Documentation]    1)To validate valid email subscription
    ...                2)To check acknowledge message of valid email subscription.

    Open Browser    ${LOGIN_URL}    ${BROWSER_NAME}
    Set Selenium Implicit Wait    5
    Maximize Browser Window

Subscribe Email
    [Documentation]    1)To subscribe under email popup at the start of the home page
    ...                2)Subscribe by entering valid email ID and checking with acknowledge message.
    Sleep    25s
    Input Text    ${EMAIL_POPUP}    ${VALID_EMAIL_ID}
    Click Button    ${EMAIL_SUBMIT}

Check Acknowledge Msg
    [Documentation]    1)Validating acknowledgement message.

    ${ACK_MSG}=    Get Text    ${VALID_EMAIL_ACKNOWLEDGE}
    Should Be Equal    ${ACK_MSG}    Sign up to receive exclusive news, product updates, and unique ways to use Adero
    Log To Console    Email subscription successful.

Close Email popup
    Click Element    ${CLOSE_EMAIL_POPUP}
    [Teardown]    Close Browser