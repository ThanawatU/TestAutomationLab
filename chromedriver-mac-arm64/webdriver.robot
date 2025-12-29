*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem

*** Variables ***
${CHROME_BROWSER_PATH}    ${EXECDIR}${/}chrome-mac-arm64${/}Google Chrome for Testing.app${/}Contents${/}MacOS${/}Google Chrome for Testing
${CHROME_DRIVER_PATH}     ${EXECDIR}${/}chromedriver-mac-arm64${/}chromedriver
${URL}                    https://www.kku.ac.th

*** Test Cases ***
TC_001: Start Chrome For Testing
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
    Call Method    ${options}    set_binary    ${CHROME_BROWSER_PATH}

    ${service}=    Evaluate    sys.modules['selenium.webdriver.chrome.service'].Service(executable_path=r'''${CHROME_DRIVER_PATH}''')    sys

    Create WebDriver    Chrome    options=${options}    service=${service}
    Go To    ${URL}
    Sleep    5s
    Close Browser

