*** Settings ***
Library   SeleniumLibrary

Library   ../superutil/settings.py
Resource  resource_utils.robot

*** Variables ***
${SERVER}     172.16.14.246
${BROWSER}    CHROME
${USERNAME}   ADMIN
${PASSWORD}   ADMIN
${LANGUAGE}   PT-BR
${MODE}       TST
${REQ}        FALSE
${ISSUE}      FALSE
${TYPE}       exe
#${URL}        https://${SERVER}/telematica/suricato.${TYPE}
${URL}        https://${SERVER}/suricato/app/logon/logon.php

*** Keywords ***
### Setup
Abrir navegador
  configurar ambiente  ${OUTPUT_DIR}
  ${SETTINGS}  configurar navegador  ${BROWSER}  ${MODE}  ${ISSUE}
  Register Keyword To Run On Failure      None

  TRY
    Open Browser  ${URL}  ${BROWSER}  options=${SETTINGS}
    Sleep  10s
  EXCEPT
    Fail  Falha ao executar o teste! Verifique se os webdrivers estão atualizados e o desempenho do computador.
  END
  

Acessar Suricato
  Abrir navegador
                                                        #249 | #246
  ${TXT_USERNAME}  Set Variable   xpath=//*[@name="logiusua"] | //*[@name="login"]
  ${TXT_PASSWORD}  Set Variable   xpath=//*[@name="senhusua"] | //*[@name="password"]
  ${BTN_OK}        Set Variable   xpath=//*[@type="submit"] | //*[@text="Logon"] | //*[@alt="Submit"]
  #Sleep  3s
  Wait Until Element is Visible   ${TXT_USERNAME}    10s
  Click Element   ${TXT_USERNAME}
  Input Text   ${TXT_USERNAME}   ${USERNAME}
  
  Wait Until Element is Visible  ${TXT_PASSWORD}    10s  
  Click Element  ${TXT_PASSWORD}
  Input Password  ${TXT_PASSWORD}  ${PASSWORD}

  #Sleep  3s
  Wait Until Element is Visible  ${BTN_OK}    10s
  Click Element  ${BTN_OK}

### Teardown
Fechar navegador
  Close Browser