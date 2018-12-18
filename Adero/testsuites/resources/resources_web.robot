*** Settings ***
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
    Sleep    25s
    Input Text    ${EMAIL_POPUP}    ${EMAIL_ID}
    Click Button    ${EMAIL_SUBMIT}
    ${msg}=    Get Element Attribute    name:email    validationMessage
    Log To Console     Hello Con
    Log To Console     ${msg}
    #Execute Javascript    return arguments[0].checkValidity();    EMPTY_EMAIL_ERR_FIELD
    #Execute Javascript    return arguments[0].validationMessage;    EMPTY_EMAIL_ERR_FIELD
    #Click Link    ${CLOSE_EMAIL_POPUP}


