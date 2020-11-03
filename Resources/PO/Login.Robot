*** Settings ***
Library    SeleniumLibrary
Variables    ../Webelements.py


*** Variables ***
${username}    username
${password}    password
${title}    Zero - Account Summary



*** Keywords ***
Input Login
    [Arguments]    ${username}
    input text   ${LoginPageUserNameElement}     ${username}

Input Password
    [Arguments]    ${password}
    input text    ${LoginPagePasswordElement}     ${password}

Sign In
    press keys    ${LoginPageSubmitButton}      [Return]
    wait until element is visible   xpath=//a[normalize-space()='Account Summary']
    title should be   ${title}


Verify The UserName
    ${name} =    get text    ${MainPageUserName}
    should be equal     ${name}      ${username}



