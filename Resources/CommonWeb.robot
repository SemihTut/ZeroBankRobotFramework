*** Settings ***
Library    SeleniumLibrary
Variables    ../Webelements.py



*** Variables ***
${url}  http://zero.webappsecurity.com/login.html
${browser}  chrome
${modules}


*** Keywords ***
Start Web Application
    open browser    ${url}  ${browser}
    maximize browser window

End Web Application
    close all browsers

Navigate through the modules
    [Arguments]    ${modulesName}
    click element    xpath=//a[normalize-space()='${modulesName}']

Logout WebPage
    click element    ${MainPageUserName}
    click element    ${MainPageLogOut}