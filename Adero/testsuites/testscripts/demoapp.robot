*** Settings ***

Library  AppiumLibrary

*** Test Cases ***
LAUNCH APPLICATION
    #Setup chromedriver
    Demo


*** Keywords ***
Setup chromedriver
    #Set Environment Variable    webdriver.chrome.driver    /home/anusha/Downloads/chromedriver.exe
    appium  --chromedriver-executable    /home/anusha/Downloads/chromedriver
Demo
    [Documentation]    Documentation demo for appium library
    Open Application    http://localhost:4723/wd/hub    platformName=Android     platformVersion=9    deviceName=Pixel_2_XL_API_28    browserName=chrome
    Go To Url    https://facebook.com
    Sleep  25s
    Wait Until Page Contains Element    xpath=//input[@type='email']
    Input Text    xpath=//input[@type='email']    test@gmail.com
    Sleep   5s

