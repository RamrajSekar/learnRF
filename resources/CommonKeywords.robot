*** Settings ***
Resource    propertyFile.robot
Library     SeleniumLibrary
Library     String

*** Variables ***
&{CK_LOCATORS}    rbtn_input=//label[text()='label-name']//following::input[1]
...               email=//input[@id='Email']
...               pwd=//input[@id='Password']
...               covid_iframe=//div[@id='webengage-notification-container']//iframe
...               close_covid=//i[@class="we_close"]
...               cookie=//button[text()="Ok,I Agree"]
...               searchTitle=//p[contains(text(),"Select Depart City")]
...               arrivalTitle=//p[contains(text(),"Select Arrival City")]
...               dep_field=//input[@name="flight_origin" and @id="BE_flight_origin_city"]
...               dep_date=//input[@name="flight_origin_date" and @id="BE_flight_origin_date"]
...               userName=//div[@class='header-links']//ul//li[1]/a
...               arrival=//input[@name='flight_destination' and @id='BE_flight_arrival_city']
...               selectDate=//div[contains(text(),"June' 20")]//following::div[4]/div[1]/div/div/table/tbody/tr[2]/td[contains(text(),'23')]
...               searchFlight=//input[@value='Search Flights']
...               searchAgain=//span[text()='Search Again']


*** Keywords ***
Select A Radio Button Value
    [Arguments]    ${field_name}
    ${locator}=    Replace String    ${CK_LOCATORS.rbtn_input}    label-name    ${field_name}
    Wait Until Element Is Visible    ${locator}
    Click Element    ${locator}

Handle String Variables
    ${name}=    Set Variable    Ramraj
    Log    ${name}
# Handle List Variables


# Handle Dictionary Variables

Login To Demoapp
    [Arguments]    ${userName}    ${userPwd}
    Click Link    Log in
    Wait Until Element Is Visible    ${CK_LOCATORS.email}
    Input Text    ${CK_LOCATORS.email}    ${userName}
    Input Text    ${CK_LOCATORS.pwd}    ${userPwd}
    Click Button   Log in
    Title Should Be   Demo Web Shop

Covid Notification
    Wait Until Element Is Visible    ${CK_LOCATORS.covid_iframe}    20s
    Select Frame    ${CK_LOCATORS.covid_iframe}
    Click Element    ${CK_LOCATORS.close_covid}

Cookie Notification
    Wait Until Element Is Visible    ${CK_LOCATORS.cookie}    20s
    Click Element    ${CK_LOCATORS.cookie}

Enter Source
    [Arguments]    ${inputCode}
    Click Element    ${CK_LOCATORS.dep_field}
    Wait Until Element Is Visible    ${CK_LOCATORS.searchTitle}
    Input Text    ${CK_LOCATORS.dep_field}    ${inputCode}
    Sleep    10s
    Press Keys    ${CK_LOCATORS.dep_field}    ALT+ARROW_DOWN
    Press Keys    ${CK_LOCATORS.dep_field}    RETURN

Enter Travel Date
    Wait Until Element Is Visible    ${CK_LOCATORS.dep_date}
    Click Element    ${CK_LOCATORS.dep_date}
    Sleep    5s
    Click Element    ${CK_LOCATORS.selectDate}

Search Flight
    Wait Until Element Is Visible    ${CK_LOCATORS.searchFlight}
    Click Button    ${CK_LOCATORS.searchFlight}

Verify Login
    [Arguments]    ${inputName}
    Element Should Contain    ${CK_LOCATORS.userName}    ${inputName}

Enter Destination
    [Arguments]    ${inputCode}
    Click Element    ${CK_LOCATORS.arrival}
    Wait Until Element Is Visible    ${CK_LOCATORS.arrivalTitle}
    Input Text    ${CK_LOCATORS.arrival}    ${inputCode}
    Sleep    10s
    Press Keys    ${CK_LOCATORS.arrival}    ALT+ARROW_DOWN
    Press Keys    ${CK_LOCATORS.arrival}    RETURN


Flight Search Result
    Wait Until Element Is Visible     ${CK_LOCATORS.searchAgain}