*** Settings ***
Documentation  Basic browser test case
Library  Selenium2Library

*** Variables ***

*** Test Cases ***

User can access Amzon home page
    [Documentation]  This is some basic info about test
    [Tags]  Smoke
    Open Browser  http://www.amazon.com  ff
    wait until page contains  Your Amazon.com
    Close Browser

User can search for products
    [Documentation]  This is some basic info about test
    [Tags]  Smoke
    Open Browser  http://www.amazon.com  ff
    wait until page contains  Your Amazon.com
    input text  id=twotabsearchtextbox  Ferrari 458
    click button  xpath=//*[@id="nav-search"]/form/div[2]/div/input
    wait until page contains  results for Toys & Games :
    Close Browser

User can click view detail of item in search list
    [Documentation]  This is some basic info about test
    [Tags]  Smoke
    Open Browser  http://www.amazon.com  ff
    wait until page contains  Your Amazon.com
    input text  id=twotabsearchtextbox  Ferrari 458
    click button  xpath=//*[@id="nav-search"]/form/div[2]/div/input
    wait until page contains  results for Toys & Games :
    click link  css=#result_0 a.s-access-detail-page
    wait until page contains  Back to search results
    Close Browser

User can add item to cart
    [Documentation]  This is some basic info about test
    [Tags]  Smoke
    Open Browser  http://www.amazon.com  ff
    wait until page contains  Your Amazon.com
    input text  id=twotabsearchtextbox  Ferrari 458
    click button  xpath=//*[@id="nav-search"]/form/div[2]/div/input
    wait until page contains  results for Toys & Games :
    click link  css=#result_0 a.s-access-detail-page
    wait until page contains  Back to search results
    click button  id=add-to-cart-button
    wait until page contains  Added to Cart
    Close Browser

User can start product checkout
    [Documentation]  This is some basic info about test
    [Tags]  Smoke
    Open Browser  http://www.amazon.com  ff
    wait until page contains  Your Amazon.com
    input text  id=twotabsearchtextbox  Ferrari 458
    click button  xpath=//*[@id="nav-search"]/form/div[2]/div/input
    wait until page contains  results for Toys & Games :
    click link  css=#result_0 a.s-access-detail-page
    wait until page contains  Back to search results
    click button  id=add-to-cart-button
    wait until page contains  Added to Cart
    click link  Proceed to checkout (1 item)
    wait until page contains  Sign In
    Close Browser

*** Keywords ***
