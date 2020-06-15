*** Settings ***
Resource    propertyFile.robot
Library     SeleniumLibrary

*** Variables ***
&{HP_LOCATORS}    register_link=//a[text()='Register']
...               register_header=//h1[text()='Register']


*** Keywords ***
Home Page Should Be Displayed
    [Arguments]    ${title}
    Wait Until Element Is Visible    ${HP_LOCATORS.register_link}
    ${exp_title}=    Get Title
    Title Should Be    ${title}
    Should Be Equal As Strings    ${exp_title}    ${title}

Navigate To Registration Page
    Click Element    ${HP_LOCATORS.register_link}
    Wait Until Element Is Visible    ${HP_LOCATORS.register_header}
    Element Should Contain    ${HP_LOCATORS.register_header}    Register