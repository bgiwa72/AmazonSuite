*** Settings ***
Documentation  This page object verifies search completion and clicks product to display detail
Library  Selenium2Library


*** Keywords ***
Verify Search Completed
    wait until page contains  results for Toys & Games :

Click Product link
    [Documentation]  Clicks on the first product in the search results
    click link  css=#result_0 a.s-access-detail-page