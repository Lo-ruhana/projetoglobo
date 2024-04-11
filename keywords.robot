*** Settings ***
Resource    base.robot

*** Keywords ***
   
Dado que eu acesso o site do globo
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible    xpath=//*[@id="cookie-banner-lgpd"]/div/div[2]/button    60s
    Click Button    xpath=//*[@id="cookie-banner-lgpd"]/div/div[2]/button

E busco pelo filtro de datas com datas estabelecidas
    Input Text    xpath=//html/body/header/div[2]/div[3]/div[2]/div/div/form/input  ${busca}
    Press Keys     xpath=//html/body/header/div[2]/div[3]/div[2]/div/div/form/input   ENTER   
    Wait Until Element Is Visible    xpath=//html/body/div/div/div[1]/div/div/div[2]/div/a/span[2]     10s
    Click Element    xpath=//html/body/div/div/div[1]/div/div/div[2]/div/a/span[2]
    Click Element    xpath=//html/body/div/div/div[1]/div/div/div[2]/div/ul/li[8]/span
    Wait Until Element Is Visible    xpath=//html/body/div/div/div[1]/div/div/div[2]/div[1]/div/div[2]/div/div/div/div[2]/div[1]/div[1]    15s
    FOR    ${index}    IN RANGE    17
        Click Element    xpath=//*[@id="search-filter-component"]/div/div[1]/div/div/div[2]/div[1]/div/div[2]/div/div/div/div[2]/div[1]/div[1]     
        Sleep    1s
    END

Então seleciono um artigo 
     Click Element    xpath=//html/body/div/div/div[1]/div/div/div[2]/div[1]/div/div[2]/div/div/div/div[2]/div[2]/div/div[2]/div/table/tbody/tr[1]/td[3]    #dia 1 calendario
     Click Element    xpath=//html/body/div/div/div[1]/div/div/div[2]/div[1]/div/div[2]/div/div/div/div[2]/div[2]/div/div[2]/div/table/tbody/tr[5]/td[4]
     Click Button     xpath=//html/body/div/div/div[1]/div/div/div[2]/div[1]/div/div[3]/button
     Click Element    xpath=//html/body/section/div/div/ul/li[5]/div[3]/a/div[1]
     Sleep    5s
     Capture Page Screenshot  
     Sleep    5s
     Close Browser
