*** Settings ***
Documentation     A test suite with a single test for valid login.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          resource.robot

*** Test Cases ***
UAT-Lab04-001 Valid Resgister
    Open Browser To Register Page
    Input First Name    Somyod
    Input Last Name    Sodsai
    Input Organization    CS KKU
    Input Email    somyod@kkumail.com
    Input Phone    091-001-1234
    Submit Credentials
    SUCCESS Page Should Be Open
    [Teardown]    Close Browser
UAT-Lab04-001 Resgister without Organization info
    Open Browser To Register Page
    Input First Name    Somyod
    Input Last Name    Sodsai
    Input Email    somyod@kkumail.com
    Input Phone    091-001-1234
    Submit Credentials
    SUCCESS Page Should Be Open
    [Teardown]    Close Browser