*** Settings ***
Library     SeleniumLibrary
Resource    /home/anusha/PycharmProjects/Adero/testsuites/resources/resources_web_validEmail.robot

*** Test Cases ***
LAUNCH APPLICATION
       Home Page
       Subscribe Email
       Check Acknowledge Msg
       Close Email popup

