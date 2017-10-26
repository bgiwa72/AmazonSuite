*** Settings ***
Documentation  Basic browser test case
Resource  ../Resources/Amazon.robot
Resource  ../Resources/Common.robot
Suite Setup  Configure Test Suite
Test Setup  Begin Web Test
Test Teardown  End Web Test
Suite Teardown  Cleaning Testing Data


*** Variables ***


*** Test Cases ***
User can search for products
    [Documentation]  This test verfies user can search for products
    [Tags]  Smoke
    Amazon.Search for Products

User must sign in to checkout
    [Documentation]  This test verfies user must sign into account to checkout
    [Tags]  Smoke
    Amazon.Search for Products
    Amazon.Select Product from Search Results
    Amazon.Add Product to Cart
    Amazon.Begin checkout
