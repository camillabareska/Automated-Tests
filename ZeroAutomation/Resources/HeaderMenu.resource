*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/Common/MainImports.resource    
Resource    ../Resources/Common/Elements.resource    


*** Keywords ***
that I'm on ZeroBank homepage
    Go To           url=${URLZeroBank}  
I click in Home
    Wait Until Element Is Visible     locator=${HomePage}
    Click Element                     locator=${HomePage}
I should be able to see the home page
    Wait Until Element Is Visible     locator=${ImgZeroBank}
be redirected to http://zero.webappsecurity.com/index.html
    Wait Until Location Is            expected=${URLZeroBank}
I click in Online Banking
    Wait Until Element Is Visible     locator=${OnlineBankingPage}
    Click Element                     locator=${OnlineBankingPage}
I should be able to see the Online Banking page
     Wait Until Element Is Visible     locator=${HeadingOnlineBanking}
be redirected to http://zero.webappsecurity.com/online-banking.html
    Wait Until Location Is            expected=${URLOnlineBanking}
I click in Feedback
    Wait Until Element Is Visible     locator=${FeedbackPage}
    Click Element                     locator=${FeedbackPage}
I should be able to see the Feedback page
     Wait Until Element Is Visible     locator=${HeadingFeedback}
be redirected to http://zero.webappsecurity.com/feedback.html
    Wait Until Location Is            expected=${URLFeedback}


