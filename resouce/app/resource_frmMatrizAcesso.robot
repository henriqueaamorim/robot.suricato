*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Identificação | Colaborador | Matriz de Acesso

# SCREEN
Acessar Tela Matriz de Acesso (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Matriz de Acesso
  ${APPNAME}  Set Variable  frmMatrizAcesso
  ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



Acessar Tela Matriz de Acesso (Edição)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Matriz de Acesso
  ${APPNAME}  Set Variable  frmMatrizAcesso
  ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"




#BUTTON
#resource_btn.

#FIELD
Preencher o campo Matriz "${MATRIZ}"
  Input Text  xpath=//*[@name="nomematraces"][@type="text"]  ${MATRIZ}

Selecionar uma opção no campo Nível de Prioridade "${NIVEL}"
  Select from list by label  xpath=//*[@name="niveprior"]  ${NIVEL}

Preencher o campo Dt. Início "${DATA}"
  Input Text  xpath=//*[@name="datainic"][@type="text"]  ${DATA}

Preencher o campo Dt. Fim "${DATA}"
  Input Text  xpath=//*[@name="datafina"][@type="text"]  ${DATA}

Selecionar uma opção no campo Empresa "${EMPRESA}"
  Select from list by label  xpath=//*[@name="codiempr"]  ${EMPRESA}

Selecionar uma opção no campo Escala "${ESCALA}"
  Select from list by label  xpath=//*[@name="codiesca"]  ${ESCALA}

Selecionar uma opção no campo Grupo "${GRUPO}"
  Select from list by label  xpath=//*[@name="codigrup"]  ${GRUPO}

Selecionar uma opção no campo Grupo Sábado "${SABADO}"
  Select from list by label  xpath=//*[@name="codigrupsaba"]  ${SABADO}

Selecionar uma opção no campo Grupo Domingo "${DOMINGO}"
  Select from list by label  xpath=//*[@name="codigrupdomi"]  ${DOMINGO}

Selecionar uma opção no campo Grupo Feriados "${FERIADO}"
  Select from list by label  xpath=//*[@name="codigrupferi"]  ${FERIADO}

Selecionar uma opção no campo Grupo de REP "${REP}"
  Select from list by label  xpath=//*[@name="gruposrep_orig"]  ${REP}

Marcar a opção "Sim" no campo Utiliza Biometria
  Click Element  xpath=//*[@id="hidden_bloco_5"]/tbody/tr[8]/td[2]/table/tbody/tr/td/input

Selecionar uma opção no campo Controla Crédito Refeitório "${CREDITO}"
  Select from list by label  xpath=//*[@name="contcredrefe"]  ${CREDITO}

Selecionar uma opção no campo Controla Faixa Horária "${FAIXA}"
  Select from list by label  xpath=//*[@name="faixhoraaces"]  ${FAIXA}

Marcar a opção "Sim" no campo Verifica Afastamento
  Click Element  xpath=//*[@id="hidden_bloco_5"]/tbody/tr[11]/td[2]/table/tbody/tr/td/input

Marcar a opção "Sim" no campo Controla Anti-Dupla 
  Click Element  xpath=//*[@id="hidden_bloco_5"]/tbody/tr[12]/td[2]/table/tbody/tr/td/input

Marcar a opção "Sim" no campo Lib Créd. Acesso
  Click Element  xpath=//*[@id="hidden_bloco_6"]/tbody/tr[2]/td[2]/table/tbody/tr/td/input
  