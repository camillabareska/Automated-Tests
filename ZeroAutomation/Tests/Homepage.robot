*** Settings *** 
Resource       ../Resources/Homepage.resource
Suite Setup        Before test
Suite Teardown     Close Browser

*** Test Cases ***
AT-01
    [Documentation]     Ensure user can see the Home Page content
    [Tags]    User  Functional  ZeroBank
    Given that I'm on ZeroBank homepage
    When I go though the page
    Then I should be able to see all the elements in it    