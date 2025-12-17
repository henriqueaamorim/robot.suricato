*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Keywords ***

Verificar Erro Usuario Nao Autorizado
  Wait Until Element is Visible   name=sc_sai_seg
  Click Element  name=sc_sai_seg


Verificar Erro Variaveis Globais
  
