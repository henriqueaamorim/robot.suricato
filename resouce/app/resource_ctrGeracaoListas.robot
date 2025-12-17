*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Processo | Geração de Lista

# SCREEN
Acessar Tela Geração de Listas
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Geração de Listas
  ${APPNAME}  Set Variable  ctrGeracaoListas
  ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]

  Mudar Frame Aplicação "mnu_iframe"
  

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  



#BUTTON
#resource_btn.


#VERIFY (246)
Verificar o campo Tipo de Lista
  ${LABEL}  Set Variable  xpath=//span[contains(text(),'Tipo de Lista')]
  Element Should Contain  ${LABEL}  Tipo de Lista

Verificar a checkbox Acesso - Biometria
  ${LABEL}      Set Variable  xpath=//label[contains(text(),'Acesso - Biometria')]
  ${CHECKBOX}   Set Variable  xpath=//input[@id='id-opt-tiplst-0']
  Element Should Contain  ${LABEL}  Acesso - Biometria
  Element Attribute Value Should Be  ${CHECKBOX}   id   id-opt-tiplst-0

Verificar a checkbox Acesso - Bloqueio
  ${LABEL}  Set Variable  xpath=//label[contains(text(),'Acesso - Bloqueio')]
  ${CHECKBOX}   Set Variable  xpath=//input[@id='id-opt-tiplst-1']
  Element Should Contain  ${LABEL}  Acesso - Bloqueio
  Element Attribute Value Should Be  ${CHECKBOX}   id  id-opt-tiplst-1

Verificar a checkbox Acesso - Liberação
  ${LABEL}  Set Variable  xpath=//label[contains(text(),'Acesso - Liberação')]
  ${CHECKBOX}   Set Variable  xpath=//input[@id='id-opt-tiplst-2']
   Element Should Contain  ${LABEL}    Acesso - Liberação
  Element Attribute Value Should Be   ${CHECKBOX}   id  id-opt-tiplst-2

Verificar a checkbox Acesso - Senha
  ${LABEL}  Set Variable  xpath=//label[contains(text(),'Acesso - Senha')]
  ${CHECKBOX}   Set Variable  xpath=//input[@id='id-opt-tiplst-3']
  Element Should Contain  ${LABEL}  Acesso - Senha
  Element Attribute Value Should Be  ${CHECKBOX}   id  id-opt-tiplst-3

Verificar a checkbox Acesso - Supervisor
  ${LABEL}  Set Variable  xpath=//label[contains(text(),'Acesso - Supervisor')]
  ${CHECKBOX}   Set Variable  xpath=//input[@id='id-opt-tiplst-4']
  Element Should Contain  ${LABEL}  Acesso - Supervisor
  Element Attribute Value Should Be  ${CHECKBOX}   id  id-opt-tiplst-4

Verificar a checkbox Acesso - Visitante
  ${LABEL}  Set Variable  xpath=//label[contains(text(),'Acesso - Visitante')]
  ${CHECKBOX}   Set Variable  xpath=//input[@id='id-opt-tiplst-5']
  Element Should Contain  ${LABEL}  Acesso - Visitante
  Element Attribute Value Should Be  ${CHECKBOX}   id  id-opt-tiplst-5

Verificar a checkbox REP - Excluir Biometria
  ${LABEL}  Set Variable  xpath=//label[contains(text(),'REP - Excluir Biometria')]
  ${CHECKBOX}   Set Variable  xpath=//input[@id='id-opt-tiplst-6']
  Element Should Contain  ${LABEL}  REP - Excluir Biometria
  Element Attribute Value Should Be  ${CHECKBOX}   id  id-opt-tiplst-6

Verificar a checkbox REP - Excluir Empregado
  ${LABEL}  Set Variable  xpath=//label[contains(text(),'REP - Excluir Empregado')]
  ${CHECKBOX}   Set Variable  xpath=//input[@id='id-opt-tiplst-7']
  Element Should Contain  ${LABEL}  REP - Excluir Empregado
  Element Attribute Value Should Be  ${CHECKBOX}   id  id-opt-tiplst-7

Verificar a checkbox REP - Incluir Biometria
  ${LABEL}  Set Variable  xpath=//label[contains(text(),'REP - Incluir Biometria')]
  ${CHECKBOX}   Set Variable  xpath=//input[@id='id-opt-tiplst-8']
  Element Should Contain  ${LABEL}  REP - Incluir Biometria
  Element Attribute Value Should Be  ${CHECKBOX}   id  id-opt-tiplst-8

Verificar a checkbox REP - Incluir Empregado
  ${LABEL}  Set Variable  xpath=//label[contains(text(),'REP - Incluir Empregado')]
  ${CHECKBOX}   Set Variable  xpath=//input[@id='id-opt-tiplst-9']
  Element Should Contain  ${LABEL}  REP - Incluir Empregado
  Element Attribute Value Should Be  ${CHECKBOX}   id  id-opt-tiplst-9

Verificar o campo Planta
  ${LABEL}  Set Variable  xpath=//span[contains(text(),'Planta')]
  ${CAMPO}  Set Variable  xpath=//span[@class='select2-selection select2-selection--single css_codplt_obj']
  Element Should Contain  ${LABEL}  Planta
  Element Attribute Value Should Be  ${CAMPO}  class  select2-selection select2-selection--single css_codplt_obj

Verificar o campo Codin(+)
  ${LABEL}  Set Variable  xpath=//span[contains(text(),'Codin(+)')]
  ${CAMPO}  Set Variable  xpath=//span[@class='select2-selection select2-selection--multiple css_codrlg_obj']
  Element Should Contain  ${LABEL}  Codin(+)
  Element Attribute Value Should Be  ${CAMPO}  class  select2-selection select2-selection--multiple css_codrlg_obj

Verificar o campo Crachá
  ${LABEL}  Set Variable  xpath=//span[contains(text(),'Crachá')]
  ${CAMPO}  Set Variable  xpath=//input[@name='icard']
  Element Should Contain  ${LABEL}  Crachá
  Element Attribute Value Should Be  ${CAMPO}  name  icard

Verificar o campo Condição de Pesquisa
  ${LABEL1}  Set Variable  xpath=//span[contains(text(),'Condição de Pesquisa')]
  ${CHEKBOX}  Set Variable  xpath=//input[@name='condpesq[]']
  ${LABEL2}  Set Variable  xpath=//label[contains(text(),'Sim')]
  Element Should Contain  ${LABEL1}   Condição de Pesquisa
  Element Attribute Value Should Be   ${CHEKBOX}  name  condpesq[]
  Element Should Contain  ${LABEL2}   Sim

#FIELD 
Selecionar uma opção no campo Tipo de Lista "${TIPO}"
  IF  "${TIPO}" == "Acesso - Biometria"
    Click Element  xpath=//*[@name="tiplst"][@value="4"]
  
  ELSE IF  "${TIPO}" == "Acesso - Bloqueio"
    Click Element  xpath=//*[@name="tiplst"][@value="2"]
  
  ELSE IF  "${TIPO}" == "Acesso - Liberação"
    Click Element  xpath=//*[@name="tiplst"][@value="1"]
      
  ELSE IF  "${TIPO}" == "Acesso - Senha"
    Click Element  xpath=//*[@name="tiplst"][@value="12"]
      
  ELSE IF  "${TIPO}" == "Acesso - Supervisor"
    Click Element  xpath=//*[@name="tiplst"][@value="18"]
      
  ELSE IF  "${TIPO}" == "Acesso - Visitante"
    Click Element  xpath=//*[@name="tiplst"][@value="43"]
      
  ELSE IF  "${TIPO}" == "REP - Excluir Biometria"
    Click Element  xpath=//*[@name="tiplst"][@value="17"]

  ELSE IF  "${TIPO}" == "REP - Excluir Empregado"
    Click Element  xpath=//*[@name="tiplst"][@value="15"]
          
  ELSE IF  "${TIPO}" == "REP - Incluir Biometria"
    Click Element  xpath=//*[@name="tiplst"][@value="16"]
          
  ELSE IF  "${TIPO}" == "REP - Incluir Empregado"
    Click Element  xpath=//*[@name="tiplst"][@value="14"]
  END

Selecionar uma opção no campo Planta "${PLANTA}"
  Select From List By Label  xpath=//*[@name="codplt"]  ${PLANTA}

Selecionar uma opção no campo Codin(+) "${CODIN}"
  Select From List By Label  xpath=//*[@name="codrlg[]"]  ${CODIN}
  
Selecionar uma opção no campo Crachá "${CRACHA}"
  Select From List By Label  xpath=//*[@name="icard"][@type="text"]  ${CRACHA}

Selecionar a opção Condição de Pesquisa
  Click Element  xpath=//*[@name="condpesq[]"]