***Variables***
${TODOTASK.TODOTAB.TABMENU}                     //a[contains(@class,'mdl-tabs__tab')][text()="To-Do Tasks"]
${TODOTASK.TODOLISTNAME.TEXT}                   //div[@id="todo"]//span[contains(@class,'mdl-checkbox__label')][text()="{list_name}"]
${TODOTASK.TODOLISTCHECKBOX.CHECKBOX}           //div[@id="todo"]//span[contains(@class,'mdl-checkbox__label')][text()="{list_name}"]//following::span[contains(@class,'mdl-checkbox__ripple-container mdl-js-ripple-effect mdl-ripple--center')]
${TODOTASK.TODOLISTDELETE.TEXTBUTTON}           //div[@id="todo"]//span[contains(@class,'mdl-checkbox__label')][text()="{list_name}"]//following::button[contains(@class,'mdl-button mdl-js-button mdl-js-ripple-effect delete')][1]