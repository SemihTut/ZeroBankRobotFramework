*** Settings ***
Library    SeleniumLibrary



*** Variables ***
${url}  http://zero.webappsecurity.com/login.html
${browser}  chrome


*** Keywords ***
Start Web Application
    open browser    ${url}  ${browser}
    maximize browser window

End Web Application
    close all browsers