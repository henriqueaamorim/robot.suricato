*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Processo | Relatório

# SCREEN
Acessar Tela Processo de Relatório 
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  frmprocessorelatorio
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable  Processo de Relatório
  ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
  ${SCREENNAME}  Set Variable  Processo de Relatório (Atualização)
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

Acessar Tela Processo de Relatório (Filtro)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  frmprocessorelatorio
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable  Processo de Relatório
  ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME} ')]
  ELSE
  ${SCREENNAME}  Set Variable  Processo de Relatório (Atualização)
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
  


#BUTTON
#resource_btn.


#FIELD

Preencher o campo Descrição do Processo "${DESC}"
  Input Text  xpath=//*[@name="descproc"][@type="text"]  ${DESC}

Preencher o campo Data de Início "${DATA}"
  Input Text  xpath=//*[@name="datainic"][@type="text"]  ${DATA}

Preencher o campo Hora de Início "${HRIN}"
  Input Text  xpath=//*[@name="horainic"][@type="text"]  ${HRIN}

Selecionar uma opção no campo Periodicidade "${PER}"
  Select from list by label  xpath=//*[@name="periexecproc"]  ${PER}

Preencher o campo Intervalo de Execução "${EX}"
  Input Text  xpath=//*[@name="inteexec"][@type="text"]  ${EX}  

Selecionar uma opção no campo Nível de Prioridade "${NVL}" 
  Select from list by label  xpath=//*[@name="niveprioproc"]  ${NVL}  

Selecionar uma opção no campo Somente em Dias Úteis "${DU}"
  Select from list by label  xpath=//*[@name="execdiasutei[]"]  ${DU}  

Preencher o campo Data da Validade "${DATAVAL}"
  Input Text  xpath=//*[@name="datavali"][@type="text"]  ${DATAVAL}

Selecionar uma opção no campo Modelo de Relatório "${MODELR}"
  Select from list by label  xpath=//*[@name="execdiasutei[]"]  ${MODELR}

Preencher o campo E-mail do Responsável "${RESP}"
  Input Text  xpath=//*[@name="mailresp"][@type="text"]  ${RESP}

Preencher o campo Destinatários "${DEST}"
  Input Text  xpath=//*[@name="destmail"][@type="text"]  ${DEST}

Preencher o campo Cópia E-mail "${COP}"
  Input Text  xpath=//*[@name="destcopimail"][@type="text"]  ${COP}     

Preencher o campo Assunto "${ASNT}"
  Input Text  xpath=//*[@name="assumail"][@type="text"]  ${ASNT}   

Preencher o campo Texto do E-mail "${TXT}"
  Input Text  xpath=//*[@name="textmail"][@type="text"]  ${TXT}  

#VERIFY CONSULTA

Verificar a label: Código
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Código')]
	Element Should Contain  ${LABEL}   Código

Verificar a label: Descrição
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Descrição')]
	Element Should Contain  ${LABEL}   Descrição  

#VERIFY FILTRO

Verificar a label: Pesquisa
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Pesquisa')]
	Element Should Contain  ${LABEL}   Pesquisa

Verificar o campo: Código
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Código')]
	${CAMPO}      Set Variable  xpath=//input[@name='codiprocauto']
	Element Should Contain             ${LABEL}   Código
  Element Attribute Value Should Be  ${CAMPO}   name   codiprocauto   

Verificar o campo: Descrição
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Descrição')]
	${CAMPO}      Set Variable  xpath=//input[@name='descproc']
	Element Should Contain             ${LABEL}   Descrição
  Element Attribute Value Should Be  ${CAMPO}   name   descproc     