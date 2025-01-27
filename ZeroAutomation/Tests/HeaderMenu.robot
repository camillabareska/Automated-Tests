*** Settings *** 
Resource       ../Resources/HeaderMenu.resource
Suite Setup        Before test
Suite Teardown     Close Browser

*** Test Cases ***
AT-02
    [Documentation]     Ensure user can click  in Home
    [Tags]    User  Functional  ZeroBank
    Given that I'm on ZeroBank homepage
    When I click in Home
    Then I should be able to see the home page
    And be redirected to http://zero.webappsecurity.com/index.html

AT-03
    [Documentation]     Ensure user can click in Online Banking
    [Tags]    User  Functional  ZeroBank
    Given that I'm on ZeroBank homepage
    When I click in Online Banking
    Then I should be able to see the Online Banking page
    And be redirected to http://zero.webappsecurity.com/online-banking.html

AT-04
    [Documentation]     Ensure user can click in Feedback
    [Tags]    User  Functional  ZeroBank
    Given that I'm on ZeroBank homepage
    When I click in Feedback
    Then I should be able to see the Feedback page
    And be redirected to http://zero.webappsecurity.com/feedback.html