*** Settings *** 
Resource       ../Resources/FeedbackPage.resource
Suite Setup        Before test
Suite Teardown     Close Browser

*** Test Cases ***
AT-05
    [Documentation]     Ensure user can send the Feedback form successfully
    [Tags]    User  Functional  ZeroBank
    Given that I'm on ZeroBank homepage
    When I click in Feedback
    Then I should be able to fill out the form
    And Send Message successfully

AT-06
    [Documentation]     Ensure user can't send the Feedback form blank
    [Tags]    User  Functional  ZeroBank
    Given that I'm on ZeroBank homepage
    When I click in Feedback
    Then I leave all required fields blank
    And I not able to send the message
