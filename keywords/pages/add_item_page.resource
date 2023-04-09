***Keywords***
Verify landing to website successfully
    SeleniumLibrary.Wait until element is visible            ${TODOLIST.LOGO.FRAME}               ${TIMEOUT['GLOBAL']}

Verify can add todo list 
    [Arguments]     ${TODO_LIST}
    ${count_todo_list}=            BuiltIn.Get length   ${TODO_LIST}
    FOR  ${i}   IN RANGE  0   ${count_todo_list}
        SeleniumLibrary.Input text         ${ADDITEM.INPUTLIST.TEXTBOX}        ${TODO_LIST[${i}]}
        SeleniumLibrary.Click element      ${ADDITEM.ADDLIST.BUTTON}        
    END
    