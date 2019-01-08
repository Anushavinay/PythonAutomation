*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary
Resource    /home/anusha/PycharmProjects/Adero/testsuites/resources/resources_web_invalidEmail.robot

*** Test Cases ***
LAUNCH APPLICATION
       Home Page
       Subscribe Invalid Email
       Retrieve Error message
       Close Email popup

