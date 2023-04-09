***Settings***
Resource        ${CURDIR}${/}..${/}import${/}import.resource
Resource    ../keywords/pages/todo_task_page.resource
Test Teardown    common_keywords.Default test teardown
Suite Teardown     Close Browser

***Test Cases***
TC_E2E : Verify landing to website to do list successfully
    [Tags]      TC_E2E   
    ${TODO_LIST}      Create List      ${TODOLISTDATA['TODOLIST1']}    ${TODOLISTDATA['TODOLIST2']}    ${TODOLISTDATA['TODOLIST3']}    ${TODOLISTDATA['TODOLIST4']}
    common_keywords.Open to do list website and maximize
    add_item_page.Verify landing to website successfully
    add_item_page.Verify can add todo list        ${TODO_LIST}  
    todo_task_page.Verify can add todo list is correct and show in tab todo Tasks    ${TODO_LIST}    
    todo_task_page.Verify can Delete todo list and doesn't show in tab todo Tasks    ${TODO_LIST} 
    todo_task_page.Verify can click done todo list and list show to task complete    ${TODOLISTDATA['TODOLIST1']}     ${TODOLISTDATA['TODOLIST2']}
    complete_page.Verify list done show on tab complete is correct    ${TODOLISTDATA['TODOLIST1']}     ${TODOLISTDATA['TODOLIST2']}
    complete_page.Verify delete complete list on complete tab is correct    ${TODOLISTDATA['TODOLIST2']}