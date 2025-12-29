*** Settings ***
Documentation     A test suite with a single test for valid login.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          resource.robot

*** Test Cases ***
UAT-Lab04-002 Resgister Empty First Name
    Open Browser To Register Page
    Input Last Name    Sodsai
    Input Organization    CS KKU
    Input Email    somyod@kkumail.com
    Input Phone    091-001-1234
    Submit Credentials
    Error Message Should Be Displayed
    Element Text Should Be    id=errors   Please enter your first name!!
    [Teardown]    Close Browser
UAT-Lab04-002 Resgister Empty Last Name
    Open Browser To Register Page
    Input First Name    Somyod
    Input Organization    CS KKU 
    Input Email    somyod@kkumail.com
    Input Phone    091-001-1234
    Submit Credentials
    Error Message Should Be Displayed
    Element Text Should Be    id=errors   Please enter your last name!!
    [Teardown]    Close Browser
UAT-Lab04-002 Resgister Empty First Name and Last Name
    Open Browser To Register Page
    Input Organization    CS KKU
    Input Email    somyod@kkumail.com
    Input Phone    091-001-1234
    Submit Credentials
    Error Message Should Be Displayed
    Element Text Should Be    id=errors   Please enter your name!!
    [Teardown]    Close Browser
UAT-Lab04-002 Resgister Empty Email
    Open Browser To Register Page
    Input First Name    Somyod
    Input Last Name    Sodsai
    Input Organization    CS KKU
    Input Phone    091-001-1234
    Submit Credentials
    Error Message Should Be Displayed
    Element Text Should Be    id=errors   Please enter your email!!
    [Teardown]    Close Browser
UAT-Lab04-002 Resgister Empty Phone Number
    Open Browser To Register Page
    Input First Name    Somyod
    Input Last Name    Sodsai
    Input Organization    CS KKU
    Input Email    somyod@kkumail.com
    Submit Credentials
    Error Message Should Be Displayed
    Element Text Should Be    id=errors   Please enter your phone number!!
    [Teardown]    Close Browser
UAT-Lab04-002 Resgister Invalid Phone Number
    Open Browser To Register Page
    Input First Name    Somyod
    Input Last Name    Sodsai
    Input Organization    CS KKU
    Input Email    somyod@kkumail.com
    Input Phone    1234
    Submit Credentials
    Error Message Should Be Displayed
    Element Text Should Be    id=errors   Please enter a valid phone number, e.g., (081-234-5678, 081 234 5678, or 081.234.5678)
    [Teardown]    Close Browser