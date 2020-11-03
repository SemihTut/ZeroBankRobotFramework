*** Settings ***
Resource    ../Resources/PO/Login.Robot
Resource    ../Resources/CommonWeb.robot
Test Setup    Start Web Application
Test Teardown    End Web Application



*** Variables ***
#${username}    username
#${password}    password

*** Test Cases ***
Login With Valid Credentials
    LoginValidCreds     ${username}     ${password}
    Verify The UserName


*** Keywords ***
LoginValidCreds
    [Arguments]     ${username}   ${password}
    Input Login         ${username}
    Input Password      ${password}
    Sign In