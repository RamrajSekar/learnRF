*** Settings ***
Resource         propertyFile.robot
Resource         HomePage.robot
Resource         RegisterPage.robot
Suite Teardown   Close All Browsers

*** Test Cases ***
Verify If Browser Is Launched with User1
    [Tags]    1
    [Setup]    Login Test Case Seup    uname=${USERNAME}    upwd=${PWD}
    Verify Login    inputName=${USERNAME}
     # #Wait Until Keyword Succeeds    10x    5s   Login To Demoapp    userName=${USERNAME}    userPwd=test12345
    # # Covid Notification
    # # Cookie Notification
    # # Enter Source And Destination    CJB
    # # Enter Source And Destination    BLR
    # Enter Travel Date
    # Search Flight

# Verify That User Is Able To Register
#     Navigate To Registration Page
#     Register A User

Verify If Browser Is Launched with User2
    [Tags]    1
    [Setup]    Login Test Case Seup    uname=testabc@tester.com    upwd=Test123
    Verify Login    inputName=testabc@tester.com

***Keywords***
Login Test Case Seup
    [Arguments]    ${uname}    ${upwd}
    Launch Browser  #brs=${BROWSER}
    Home Page Should Be Displayed    Demo Web Shop
    Login To Demoapp    userName=${uname}    userPwd=${upwd}