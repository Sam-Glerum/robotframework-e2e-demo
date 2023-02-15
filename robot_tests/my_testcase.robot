*** Settings ***
Library    SeleniumLibrary
Resource    variables.resource
Resource    keywords.resource

*** Test Cases ***
Open Browser
    Open The Browser

Search on Google
    Search Topic  browserstack

