# *** Settings ***
# Resource         propertyFile.robot
# Resource         HomePage.robot
# Resource         RegisterPage.robot
# Suite Teardown   Close All Browsers

# *** Test Cases ***
# Verify If Browser Is Launched with User1
#     [Tags]    2
#     Launch Browser    testurl=https://www.yatra.com/
#     Covid Notification
#     Cookie Notification
#     Enter Source    CJB
#     Enter Destination    BLR
#     # Enter Source And Destination    BLR
#     Enter Travel Date
#     Search Flight
#     Flight Search Result
