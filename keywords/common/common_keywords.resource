*** Keywords ***
Default test teardown
    [Documentation]    Capture screenshot for every fail test case
    Builtin.Run keyword if test failed      SeleniumLibrary.Capture Page Screenshot
     # SeleniumLibrary.Close all browsers

Open to do list website and maximize     
    SeleniumLibrary.Open browser     ${URL_TODOLIST}     ${BROWSER}    
    SeleniumLibrary.Maximize Browser Window