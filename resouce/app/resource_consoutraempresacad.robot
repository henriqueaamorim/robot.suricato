*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Estrutura | Empresa Terceira | Cadastro de Empresa Terceira

# SCREEN
Acessar Tela Consulta de Empresas Terceiras
  ${OBJ}         Set Variable  SCN
  ${APPNAME}     Set Variable  consoutraempresacad
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable   Empresa Terceira
    ${ELEMENT}     Set Variable  xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
    ${SCREENNAME}  Set Variable   Consulta de Empresas Terceiras
    ${ELEMENT}     Set Variable  xpath=//td[contains(text(),'${SCREENNAME}')]
  END
  
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Consulta de Empresas Terceiras (Filtro)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}     Set Variable  consoutraempresacad
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}   Set Variable   Empresa Terceira
     ${ELEMENT}     Set Variable   xpath=//td[contains(text(),'${SCREENNAME} ')]
  ELSE
     ${SCREENNAME}  Set Variable  Consulta de Empresas Terceiras
     ${ELEMENT}     Set Variable  xpath=//td[contains(text(),'${SCREENNAME}')]
  END
  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
 
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"




#BUTTON
#resource_btn.

#FIELD
Preencher o campo Código da Empresa Terceira "${COD}"
  Input Text  xpath=//*[@name="codiemprcont"][@type="text"]  ${COD}

Preencher o campo Nome da Empresa Terceira "${EMP}"  
  Input Text  xpath=//*[@name="nomeemprcont"][@type="text"]  ${EMP}


#VERIFY

Verificar a label Código da Empresa Terceira
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr[3]/td/table/tbody/tr[9]/td/table/tbody/tr/td[2]/table/tbody/tr/td/table/tbody/tr[1]/td[2]
	Element Should Contain  ${LABEL}   Código da Empresa Terceira

Verificar a label Nome da Empresa Terceira
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr[3]/td/table/tbody/tr[9]/td/table/tbody/tr/td[2]/table/tbody/tr/td/table/tbody/tr[1]/td[3]
	Element Should Contain  ${LABEL}   Nome da Empresa Terceira

Verificar a label Endereço
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr[3]/td/table/tbody/tr[9]/td/table/tbody/tr/td[2]/table/tbody/tr/td/table/tbody/tr[1]/td[4]
	Element Should Contain  ${LABEL}   Endereço



#VERIFY

Verificar o campo Código da Empresa Terceira
	${LABEL}      Set Variable  xpath=(//td[contains(text(),'Código da Empresa Terceira')])[@id='SC_codiemprcont_label']
	${CAMPO}      Set Variable  xpath=//input[@id='SC_codiemprcont'][@name='codiemprcont']

	Element Should Contain             ${LABEL}   Código da Empresa Terceira
 	Element Attribute Value Should Be  ${CAMPO}   name   codiemprcont

Verificar o campo Nome da Empresa Terceira
	${LABEL}      Set Variable  xpath=(//td[contains(text(),'Nome da Empresa Terceira')])[@id='SC_nomeemprcont_label']
	${CAMPO}      Set Variable  xpath=//input[@id='SC_nomeemprcont'][@name='nomeemprcont']

	Element Should Contain             ${LABEL}   Nome da Empresa Terceira
 	Element Attribute Value Should Be  ${CAMPO}   name   nomeemprcont
