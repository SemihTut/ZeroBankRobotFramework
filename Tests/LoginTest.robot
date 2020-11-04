*** Settings ***
Resource    ../Resources/PO/Login.Robot
Resource    ../Resources/CommonWeb.robot
Test Setup    Start Web Application
Test Teardown    End Web Application



*** Variables ***


*** Test Cases ***
Login With Valid Credentials
    LoginValidCreds     ${username}     ${password}
    Verify The UserName
    CommonWeb.Navigate through the modules    Account Activity
    CommonWeb.Logout WebPage
    sleep    2


*** Keywords ***
LoginValidCreds
    [Arguments]     ${username}   ${password}
    Input Login         ${username}
    Input Password      ${password}
    Sign In