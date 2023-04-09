*** Settings ***
Library                 SeleniumLibrary           
Library                 BuiltIn
Library                 DebugLibrary
Library                 String
Library                 Collections
Library                 RequestsLibrary
Resource                ${CURDIR}${/}import_common_keywords.resource
Resource                ${CURDIR}${/}import_pages_keywords.resource
Resource                ${CURDIR}${/}import_pages_locators.resource
Variables               ${CURDIR}${/}..${/}resources${/}global_setting.yaml
Variables               ${CURDIR}${/}..${/}resources${/}testdata.yaml

