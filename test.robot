*** Settings ***
Resource    base.robot
Resource    keywords.robot



*** Test Cases ***
TESTE GLOBO
    Dado que eu acesso o site do globo
    E busco pelo filtro de datas com datas estabelecidas
    Então seleciono um artigo 
