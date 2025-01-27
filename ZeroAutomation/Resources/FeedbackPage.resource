*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/Common/MainImports.resource    
Resource    ../Resources/Common/Elements.resource    


*** Keywords ***
that I'm on ZeroBank homepage
    Go To                                url=${URLZeroBank}  
I click in Feedback
    Wait Until Element Is Visible        locator=${FeedbackPage}
    Click Element                        locator=${FeedbackPage}
I should be able to fill out the form
    Wait Until Element Is Visible        locator=${HeadingFeedback}
    Input Text                           locator=${NameFeedback}     text=${ValidName}
    Input Text                           locator=${EmailFeedback}    text=${ValidEmail} 
    Input Text                           locator=${SubjectFeedback}  text=${ValidSubject}
    Input Text                           locator=${CommentFeedback}  text=${ValidComment}    
Send Message successfully
    Click Element                        locator=${SendMessageButton}
    Wait Until Location Contains         expected=${URLMessageSent}
    ${ConfirmationMessage}=    Get Text         xpath=${ContainerMessage}
    Should Contain    ${ConfirmationMessage}    ${MessageSent}    
I leave all required fields blank
    Go to                                url=${URLFeedback}    
I not able to send the message
    Click Element                        locator=${SendMessageButton}
    Wait Until Location Contains         expected=${URLFeedback}



