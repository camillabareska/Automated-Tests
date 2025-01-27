# Robot Framework for ZeroBank
Test automation framework for [ZeroBank.](http://zero.webappsecurity.com/)

## Table of contents
- [Summary](#summary)
- [Framework Structure](#framework-structure)
- [Getting Started](#getting-started)
- [How to Review Test Report](#how-to-review-test-report)

## Summary
Robot Framework is a test automation framework based on Python.
Its used for creating automated tests for Functional, API, Mobile and E2E Testing.
The tests can be run against the agile, pre-production and production environments. 

## Framework Strucuture
├───Resources                       # This folder contains Resources for the entire ZeroBank
    ├──Common                       # This subfolder contains common Resources for the entire ZeroBank
    ├──FeedbackPage                 # This subfolder contains the Resources for the Feedback page
    ├──HeaderMenu                   # This subfolder contains the Resources for the Header Menu
    ├──HomePage                     # This subfolder contains the Resources for the Homepage process
    └──SignIn                       # This subfolder contains the Resources for the Sign In process
├───Tests                           # This folder contains Tests for the entire Zolo.ca
    ├──Feedback                     # This subfolder contains tests for the Feedback
    ├──HeaderMenu                   # This subfolder contains tests for the Header Menu
    ├──Homepage                     # This subfolder contains tests for the Homepage
    └──SignIn                       # This subfolder contains tests for the Sign In process

## Getting Started
- Download and install Chrome or Firefox browser.
- Install VSCode (https://code.visualstudio.com/).
- Clone the repository into a folder.
- Download Python for your Operational System (https://www.python.org/downloads/)

### Setup Env Step By Step
- Install Python and make sure to create the PATH for it
- On your terminal install Robot Framework `pip install robotframework`
- Install the libraries that test will be using
    - Selenium Library `pip install --upgrade robotframework-seleniumlibrary` (https://github.com/robotframework/SeleniumLibrary/) # WEB
    - Appium Library `pip install --upgrade robotframework-appiumlibrary` (https://github.com/serhatbolsu/robotframework-appiumlibrary) # MOBILE
    - Market Requests `pip install --upgrade robotframework-requests` (https://github.com/MarketSquare/robotframework-requests#readme) # API
    - Faker `pip install Faker` (https://pypi.org/project/Faker/)
    - Database Library `pip install robotframework-databaselibrary` (https://docs.robotframework.org/docs/different_libraries/database)
        - Database Module for Microsoft SQL Server `pip install pyodbc` (https://pypi.org/project/pyodbc/)
        - Database Module for MySQL `pip install pymysql` (https://pypi.org/project/pymysql/)
- Go to Extensions on your VSCode and install `Robot Framework Language Server` from Robocorp
- Download Webdrivers `Google Chrome` (https://chromedriver.chromium.org/home) and `Firefox` (https://github.com/mozilla/geckodriver/releases/)
    - Then place them in your Python Path Folder (C:\Users\<YourUserName>\AppData\Local\Programs\Python\Python310\Scripts\)

### How to write Tests
- Create your `Tests.robot` file into a folder on ZeroAutomation\Tests (Or a subfolder if it is a new feature)
- Create your `Tests.resource` file into a folder on ZeroAutomation\Resources (Or a subfolder if it is a new feature)

### How to Run Tests
- Execute all tests right-clicking on the Tests folder > Run Tests
- Execute all tests in all robot files in current folder and subfolders `robot .`
- Execute all tests in single robot file in current folder `robot example.robot`
- Execute all tests in single robot file in subfolder `robot path/to/example.robot`

#### How to run Tests by Test Case Name
- Execute test cases clicking in run test button next to the test case name within the desired Test file
- Execute test cases with name "Example" in any file `robot --test Example .`
- Execute test cases with name "Example" in specific file `robot --test Example example.robot`

#### Observations
- The tests are configured to run in headless mode, if you want to enable their display, go to the Keywords.resource file and comment `#` the `browser=headlessfirefox`
