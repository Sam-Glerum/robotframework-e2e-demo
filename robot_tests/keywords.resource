*** Settings ***
Library     SeleniumLibrary
Resource    variables.resource

*** Keywords ***

Open The Browser
    Create Webdriver    Chrome
    Open Browser    ${HOMEPAGE}    ${BROWSER}

Search Topic
    [Arguments]     ${topic}
    Input Text      name=q      ${topic}
    Press Keys      name=q      \\13