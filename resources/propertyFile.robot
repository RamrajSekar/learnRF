*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    headlesschrome
${BASE_URL}   http://demowebshop.tricentis.com/  #https://www.yatra.com/  #http://demowebshop.tricentis.com/
${USERNAME}   rsekar@test.com
${PWD}        India@11
${DEF_WAIT}   30sec

*** Keywords ***
Set Variables
    Set Selenium Timeout    ${DEF_WAIT}
    Set Selenium Speed    0.1s

Launch Browser 
    [Arguments]    ${testurl}=http://www.google.com
    Set Variables
    Open Browser    url=${testurl}    browser=${BROWSER}    options=add_argument("--remote-debugging-port"); add_argument("--disable-dev-shm-usage")
    Maximize Browser Window


# 1-1-2020

# 01/01/2020

# testabc@tester.com
# Test123

#register('gender-male','Shan','1','shan1@test.com','shan1@123')
