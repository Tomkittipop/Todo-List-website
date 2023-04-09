***Keywords***
Verify list done show on tab complete is correct
    [Arguments]     ${todocomplete1}    ${todocomplete2}
    ${locator_list_complete1}=        String.Replace string             ${COMPLETETASK.COMPLETELIST.TEXT}     {list_name}    ${todocomplete1}
    ${locator_list_complete2}=        String.Replace string             ${COMPLETETASK.COMPLETELIST.TEXT}     {list_name}    ${todocomplete2}
    ${locator_complete_dis1}=          SeleniumLibrary.Get text          ${locator_list_complete1}
    ${locator_complete_dis2}=          SeleniumLibrary.Get text          ${locator_list_complete2}
    ${locator_complete_dis1}=        String.Replace string             ${locator_complete_dis1}                   done           ${EMPTY}
    ${locator_complete_dis2}=        String.Replace string             ${locator_complete_dis2}                  done           ${EMPTY}
    BuiltIn.Should be equal             ${locator_complete_dis1}      ${todocomplete1}
    BuiltIn.Should be equal             ${locator_complete_dis2}      ${todocomplete2}


Verify delete complete list on complete tab is correct
    [Arguments]     ${todocomplete2}
    ${locator_deletelist_complete}=        String.Replace string             ${COMPLETETASK.DELETELISTDONE.MATERIAL}     {list_name}    ${todocomplete2}
    SeleniumLibrary.Click element        ${locator_deletelist_complete}
    Page Should Not Contain Element            ${locator_deletelist_complete}
    


