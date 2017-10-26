*** Settings ***
Library  Selenium2Library


*** Keywords ***
Load
    Go To  http://www.amazon.com

Verify Page Loaded
    wait until page contains  Your Amazon.com
