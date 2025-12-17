*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Estrutura | Empresa | EPI - Equipamento de proteção individual | Histórico de EPI por Colaborador

# SCREEN
Acessar Tela Cadastro Histórico de EPI por Colaborador
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Histórico de EPI por Colaborador
  ${APPNAME}  Set Variable  frmHistoricoEPIColaborador
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Consulta Histórico de EPI por Colaborador
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Histórico de EPI por Colaborador
  ${APPNAME}  Set Variable  frmHistoricoEPIColaborador
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"

  

#BUTTON
#resource_btn.


#FIELD
Selecionar uma opção no campo Empresa "${EMPRESA}"
  Input Text  xpath=//*[@name="codiempr"][@type="text"]  ${EMPRESA}

Preencher o campo Colaborador "${COLAB}"
  Input Text  xpath=//*[@name="idcolab"][@type="text"]  ${COLAB}
  #Necessário clicar fora para validar a inserção
  Click Element  xpath=//*[@id="hidden_bloco_3"]/tbody/tr[1]/td[1]

Preencher o campo EPI "${EPI}"
  Select from list by label  xpath=//*[@name="codiepi"]  ${}
  #Necessário clicar fora para validar a inserção
  Click Element  xpath=//*[@id="hidden_bloco_3"]/tbody/tr[1]/td[1]
  
Preencher o campo Quantidade "${QUANT}"
  Input Text  xpath=//*[@name="qtde"][@type="text"]  ${QUANT}

Preencher o campo Validade "${VALIDADE}"
  Input Text  xpath=//*[@name="validiasepi"][@type="text"]  ${VALIDADE}

Preencher o campo Status Vencimento "${STATUS}"
  Input Text  xpath=//*[@name="statvencepi"][@type="text"]  ${STATUS}
 
Preencher o campo Termo de Compromisso "${TERMO}"
  Input Text  xpath=//*[@name="coditerm"][@type="text"]  ${TERMO}
 
Preencher o campo Observação "${OBSERVACAO}"
  Input Text  xpath=//*[@name="epiobse"][@type="text"]  ${OBSERVACAO}
  #Necessário clicar fora para validar a inserção
  Click Element  xpath=//*[@id="hidden_bloco_3"]/tbody/tr[1]/td[1]