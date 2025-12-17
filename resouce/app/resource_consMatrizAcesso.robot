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
Acessar Tela de Matriz de Acesso (Consulta)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  consMatrizAcesso
  IF   "${SERVER}" "172.16.14.246" or "${SERVER}" "172.16.14.247"
  ${SCREENNAME}   Set Variable    Matriz de Acesso
  ${ELEMENT}      Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
   ${SCREENNAME}  Set Variable  Consulta de Matriz de Acesso 
  ${ELEMENT}  Set Variable  
  END
  sleep  2s
  Mudar Frame Aplicação "iframe_mnu"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

Acessar Tela de Matriz de Acesso (Filtro)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  consMatrizAcesso
  IF   "${SERVER}" "172.16.14.246" or "${SERVER}" "172.16.14.247"
  ${SCREENNAME}   Set Variable    Matriz de Acesso
  ${ELEMENT}      Set Variable    xpath=//td[contains(text(),'${SCREENNAME}' )]
  ELSE
   ${SCREENNAME}  Set Variable  Consulta de Matriz de Acesso 
  ${ELEMENT}  Set Variable  
  END
  sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#BUTTON
#resource_btn.

#FIELD
Preencher o campo Cód. Matriz "${COD}"
  Input Text  xpath=//*[@name="codimatraces"][@type="text"]  ${COD}

Preencher o campo Matriz "${MATRIZ}"
  Input Text  xpath=//*[@name="nomematraces"][@type="text"]  ${MATRIZ}

Preencher o campo Data Início "${DIA}/${MES}/${ANO}"
  Input Text  xpath=//*[@name="datainic_dia"][@type="text"]  ${DIA}
  Input Text  xpath=//*[@name="datainic_mes"][@type="text"]  ${MES}
  Input Text  xpath=//*[@name="datainic_ano"][@type="text"]  ${ANO}

Preencher o campo Data Fim "${DIA}/${MES}/${ANO}"
  Input Text  xpath=//*[@name="datafina_dia"][@type="text"]  ${DIA}
  Input Text  xpath=//*[@name="datafina_mes"][@type="text"]  ${MES}
  Input Text  xpath=//*[@name="datafina_ano"][@type="text"]  ${ANO}

Preencher o campo Empresa "${EMP}"
  Input Text  xpath=//*[@name="codiempr"][@type="text"]  ${EMP}

#VERIFY LABELS

Verificar a label Código
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Código')]
	Element Should Contain  ${LABEL}   Código

Verificar a label Descrição
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Descrição')]
	Element Should Contain  ${LABEL}   Descrição

Verificar a label Data de Início
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Data de Início')]
	Element Should Contain  ${LABEL}   Data de Início

Verificar a label Data de Término
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Data de Término')]
	Element Should Contain  ${LABEL}   Data de Término


#VERIFY CAMPOS

Verificar a label Pesquisa
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Pesquisa')]
	Element Should Contain  ${LABEL}   Pesquisa

Verificar o campo Descrição
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Descrição')]
	${CAMPO}      Set Variable  xpath=//input[@name='nomematraces']
	Element Should Contain             ${LABEL}   Descrição
 	Element Attribute Value Should Be  ${CAMPO}   name   nomematraces
