*** Settings ***
Library  Selenium2Library


*** Keywords ***
Verify SignIn Page Loaded
    wait until page contains  Sign In