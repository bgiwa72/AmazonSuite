*** Settings ***
Documentation  Amazon top navigation
Library  Selenium2Library

*** Keywords ***
Search for Products
    Enter Search Item
    Submit Search


Enter Search Item
    input text  id=twotabsearchtextbox  Ferrari 458

Submit Search
    click button  xpath=//*[@id="nav-search"]/form/div[2]/div/input