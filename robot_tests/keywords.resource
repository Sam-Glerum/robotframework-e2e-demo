*** Settings ***
Library     SeleniumLibrary
Library     Collections
Resource    variables.resource
Variables   resource.py

*** Keywords ***
Capability Dictionary
    Convert To Dictionary    ${capabilities}

Open The Browser
#    ${chrome_options} =     Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
#    ${options}=     Call Method     ${chrome_options}       to_capabilities
    #Create Webdriver    Remote      command_executor=http://selenium_grid_hub_robotframework:4444/wd/hub    desired_capabilities=${options}
    #Create Webdriver    Chrome
    Open Browser    url=${HOMEPAGE}    browser=${BROWSER}       alias=None        remote_url=${GRID_URL}

#Open Firefox Browser
#    Open Browser    url=${HOMEPAGE}    browser=firefox          alias=None        remote_url=${GRID_URL}
#
#
#Open Edge Browser
#    Open Browser    url=${HOMEPAGE}    browser=MicrosoftEdge    alias=None        remote_url=${GRID_URL}

Search Topic
    [Arguments]     ${topic}
    Input Text      name=q      ${topic}
    Press Keys      name=q      ENTER