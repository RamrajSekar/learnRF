*** Settings ***
Library    SeleniumLibrary
Library    ${EXECDIR}//resources//scripts//getConnection.py

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
    ${platform}=    Evaluate    sys.platform   sys
    Set Suite Variable    ${platform}
    IF    '${platform}'!="win32"
        handleVirtualDisplay    start=True
    END

Launch Browser 
    [Arguments]    ${testurl}=${BASE_URL}
    Set Variables
    Open Browser    url=${testurl}    browser=${BROWSER}    options=add_experimental_option("detach", True)
    #options=add_argument("--disable-gpu"); add_argument("--headless")
    Maximize Browser Window

Execute Tear Down
    Close All Browsers
    IF    '${platform}'!="win32"
        Run Keyword And Continue On Failure    handleVirtualDisplay    start=False
    END
    
# 1-1-2020

# 01/01/2020

# testabc@tester.com
# Test123

#register('gender-male','Shan','1','shan1@test.com','shan1@123')
