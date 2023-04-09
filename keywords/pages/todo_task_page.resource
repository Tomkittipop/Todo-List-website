***Keywords***
Verify can add todo list is correct and show in tab todo Tasks
    [Arguments]     ${TODO_LIST}    
    SeleniumLibrary.Click element            ${TODOTASK.TODOTAB.TABMENU} 
    ${count_todo_list}=            BuiltIn.Get length   ${TODO_LIST}
    ${locator_todo_list}=            BuiltIn.Create list
    FOR  ${i}   IN RANGE  0   ${count_todo_list}
        ${locator.todolist_name}=                String.Replace string              ${TODOTASK.TODOLISTNAME.TEXT}     {list_name}        ${TODO_LIST[${i}]}
        ${locator_todo_dis}=                    SeleniumLibrary.Get text           ${locator.todolist_name} 
        Collections.Append To List         ${locator_todo_list}     ${locator_todo_dis}
    END
    BuiltIn.Should be equal          ${TODO_LIST}       ${locator_todo_list}
  


Verify can delete todo list and doesn't show in tab todo Tasks
    [Arguments]     ${TODO_LIST}
    ${locator_delete}=                String.Replace string              ${TODOTASK.TODOLISTDELETE.TEXTBUTTON}     {list_name}        ${TODO_LIST[${3}]}
    SeleniumLibrary.Click element        ${locator_delete}
    
    ${count_todo_listdel}=            BuiltIn.Get length       ${TODO_LIST}
    ${count_todo_listdel1}=     BuiltIn.evaluate        ${count_todo_listdel}-1
    ${locator_todo_listdel}=            BuiltIn.Create list
    FOR  ${i}   IN RANGE  0   ${count_todo_listdel1}
        ${locator.todolist_namedel}=                String.Replace string              ${TODOTASK.TODOLISTNAME.TEXT}     {list_name}        ${TODO_LIST[${i}]}
        ${locator_todo_disdel}=                    SeleniumLibrary.Get text           ${locator.todolist_namedel} 
        Collections.Append To List         ${locator_todo_listdel}     ${locator_todo_disdel}
    END
    BuiltIn.Should Not Be Equal          ${TODO_LIST}       ${locator_todo_listdel}


Verify can click done todo list and list show to task complete
     [Arguments]     ${todocomplete1}    ${todocomplete2}
     ${locator_checkbox1}=        String.Replace string             ${TODOTASK.TODOLISTCHECKBOX.CHECKBOX}     {list_name}    ${todocomplete1}
     ${locator_checkbox2}=        String.Replace string             ${TODOTASK.TODOLISTCHECKBOX.CHECKBOX}     {list_name}    ${todocomplete2}
     SeleniumLibrary.Click element        ${locator_checkbox1}
     Sleep    0.5s
     SeleniumLibrary.Click element        ${locator_checkbox2}
     Sleep    0.5s
     SeleniumLibrary.Click element     ${COMPLETETASK.COMPLETETAB.TABMENU}

    