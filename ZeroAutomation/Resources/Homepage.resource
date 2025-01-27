*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/Common/MainImports.resource    
Resource    ../Resources/Common/Elements.resource    

*** Keywords ***
that I'm on ZeroBank homepage
    Go To           url=${URLZeroBank}
I go though the page
    Wait Until Element Is Visible     locator=${ImgZeroBank}
I should be able to see all the elements in it 
    Wait Until Element Is Visible     locator=${HeaderZeroBank} 
    Wait Until Element Is Visible     locator=${SearchBoxZeroBank}
    Wait Until Element Is Visible     locator=${HomePage} 
    Wait Until Element Is Visible     locator=${SignInZeroBank} 
    Wait Until Element Is Visible     locator=${OnlineBankingPage}
    Wait Until Element Is Visible     locator=${FeedbackPage}