*** Settings ***
Library        SeleniumLibrary
Library        Collections
Resource       URLs.resource
Resource       Elements.Resource

*** Keywords ***
Before test
    Open Browser      about:blank         options=add_argument("--ignore-certificate-errors")      browser=headlessfirefox
    Set Selenium Timeout    10
    Maximize Browser Window


