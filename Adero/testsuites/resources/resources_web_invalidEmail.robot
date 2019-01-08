*** Settings ***
Library     SeleniumLibrary
Variables     /home/anusha/PycharmProjects/Adero/testsuites/variables/variables.yaml


*** Keywords ***

Home Page
    [Documentation]    1)To validate invalid email subscription
    ...                2)To check acknowledge message of invalid email subscription.


    Open Browser    ${LOGIN_URL}    ${BROWSER_NAME}
    Set Selenium Implicit Wait    5
    Maximize Browser Window

Subscribe Invalid Email
    [Documentation]    1)To subscribe with invalid email syntax.

    Sleep    25s
    Input Text    ${EMAIL_POPUP}    ${INVALID_EMAIL_ID}
    Click Button    ${EMAIL_SUBMIT}

Retrieve Error message
    [Documentation]    1)To retrieve error message of invalid email entered

    ${ERROR_MSG}=    Get Element Attribute    name:email    validationMessage
    Should Be Equal    ${ERROR_MSG}    Please include an '@' in the email address. 'v.anusha' is missing an '@'.
    Log To Console     Error message of invalid email ID successful.

    #Execute Javascript    return arguments[0].checkValidity();    EMPTY_EMAIL_ERR_FIELD
    #Execute Javascript    return arguments[0].validationMessage;    EMPTY_EMAIL_ERR_FIELD
    #Click Link    ${CLOSE_EMAIL_POPUP}

Close Email popup
    Click Element    ${CLOSE_EMAIL_POPUP}
    [Teardown]    Close Browser


