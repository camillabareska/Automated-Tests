*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/Common/MainImports.resource    
Resource    ../Resources/Common/Elements.resource    

*** Keywords ***
that I'm on ZeroBank homepage
    Go To           url=${URLZeroBank}
I click in Sign In
    Wait Until Element Is Visible     locator=${SignInZeroBank}
    Click Element                     locator=${SignInZeroBank}
I use a registered user email 
    Wait Until Element Is Visible     locator=${InputLogin}
    Input Text                        locator=${InputLogin}    text=${ValidLogin}
    Wait Until Element Is Visible     locator=${InputPassword}
    Input Password                    locator=${InputPassword}    password=${ValidPassword}
    Click Element                     locator=${BtnSignIn}
I should be able to sign in ZeroBank
    Go Back
    Wait Until Element Is Visible     locator=${HeaderUser}