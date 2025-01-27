*** Settings *** 
Resource       ../Resources/SignIn.resource
Suite Setup        Before test
Suite Teardown     Close Browser

*** Test Cases ***
AT-07
    [Documentation]     Ensure user can sing in into Zero Bank
    [Tags]    User  Functional  ZeroBank
    Given that I'm on ZeroBank homepage
    When I click in Sign In
    Then I use a registered user email
    And I should be able to sign in ZeroBank

