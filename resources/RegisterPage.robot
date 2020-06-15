*** Settings ***
Resource    propertyFile.robot
Library     SeleniumLibrary
Resource    CommonKeywords.robot

*** Variables ***
&{RP_LOCATORS}    register_link=//a[text()='Register']

*** Keywords ***
Register A User
    Select A Radio Button Value    Gender: