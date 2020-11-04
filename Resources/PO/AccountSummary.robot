*** Settings ***
Library    SeleniumLibrary
Variables    ../Webelements.py
Library     Collections


*** Variables ***
${headers}  Cash Accounts    Investment Accounts    Credit Accounts     Loan Accounts


*** Keywords ***
Get All Headers
    ${webelements}  get webelements    ${AccountSummaryPageMainTitles}
    ${second}   get text    ${webelements}[1]
    log to console     ${second}