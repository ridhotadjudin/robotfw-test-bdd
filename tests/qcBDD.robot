*** Settings ***
Library     SeleniumLibrary
Resource    ../resources/keywords/login_resources.robot
Resource    ../resources/keywords/mytracker_resources.robot


*** Variables ***
${username-qma}     ridho
${password}         ridho202208001
${checkindate}      6/12/2022
# format tangga: bln/tgl/thn
${yesterdaytask}    - CR Nexchief${\n}-Testing bugfixing${\n}
${todaytask}        Testing Scheduler
${blockertask}      koneksi ke rempoa tidak stabil


*** Test Cases ***
Insert daily qma QC
    given I am on login Page
    when I insert username and password
    and Click button login qma
    then I should see my Profile
    when I open menu daily tracker
    and I insert daily task qma
    then I should see success message
    and I log out


*** Keywords ***
I am on login Page
    Open My Browser

I insert username and password
    login_resources.Input Username    ${username-qma}
    login_resources.Input Password    ${password}

Click button login qma
    Click Login Button

I should see my Profile
    Verify Success Login
    Click Sidebar Toggle
    Verify my Profile

I open menu daily tracker
    Open Menu Daily

I insert daily task qma
    Click Button    ${BUTTON_ADD_DAILY}
    Insert CheckIn Date    ${checkindate}
    Select Mood    ${AWESOME}
    Select Status    ${WORKING_FROM_OFFICE}
    Select Project    ${NEXCHIEF}
    Select Form    ${DAILY_CHECK_IN}
    Insert Yesterday Task    ${yesterdaytask}
    Insert Today Task    ${todaytask}
    Insert Blocker Task    ${blockertask}
    Click Submit Daily

I should see success message
    Verify Success Submit Daily

I log out
    Click Logout Button
