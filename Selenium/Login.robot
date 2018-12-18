*** Settings ***
Documentation           This is a simple test with Robot Framework
Library                 Selenium2Library
Library    Selenium2Library
Library  Selenium2Library

*** Variables ***
${SERVER}               http://google.com
${BROWSER}              firefox
${DELAY}                5

*** Test Cases ***
Valid Login
    Open Browser To Login Page


*** Keywords ***
Open Browser To Login Page
    Open Browser     ${SERVER}   ${BROWSER}
    Maximize Browser Window



