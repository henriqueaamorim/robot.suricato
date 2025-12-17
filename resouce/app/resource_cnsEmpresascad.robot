*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Estrutura | Empresa | Cadastro de Empresas


# SCREEN
Acessar Tela Consulta de Empresas
  ${OBJ}         Set Variable  SCN
  ${APPNAME}     Set Variable  cnsEmpresascad
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${SCREENNAME}  Set Variable  Empresa
      ${ELEMENT}     Set Variable  xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
      ${SCREENNAME}  Set Variable  Empresas (Atualização)
      ${ELEMENT}     Set Variable  xpath=//td[contains(text(),'${SCREENNAME}')]
  Mudar Frame Aplicação "nm_iframe_aba_frmEmpresas_1"
  
  END
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Consulta de Empresas (Filtro)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}     Set Variable  cnsEmpresascad
   IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${SCREENNAME}  Set Variable  Empresa (Filtro)
      ${ELEMENT}     Set Variable  xpath=//td[contains(text(),'${SCREENNAME}')]
   Sleep  2s   
   Mudar Frame Aplicação "TB_iframeContent"   
   ELSE   
      ${SCREENNAME}  Set Variable  Consulta de Empresas
      ${ELEMENT}     Set Variable  xpath=//td[contains(text(),'${SCREENNAME}')]
   Mudar Frame Aplicação "nm_iframe_aba_frmEmpresas_1"
   END 
  

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#BUTTON
#resource_btn.

#FIELD
Selecionar uma opção no campo Empresa "${EMPRESA}"
  Select From List By Label  xpath=//*[@name="codiempr"]   ${EMPRESA}

Preencher o campo Nome "${NOME}"
  Input Text  xpath=//*[@name="nomeempr"][@type="text"]   ${NOME}

Preencher o campo Nome Fantasia "${NOME}"
  Input Text  xpath=//*[@name="apelempr"][@type="text"]   ${NOME}

Preencher o campo Chave Externa "${CHAVE}"
  Input Text  xpath=//*[@name="external_key"][@type="text"]   ${CHAVE}


#VERIFY

Verificar a label Chave Externa
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Chave Externa')]
  Sleep  2s
	Element Should Contain  ${LABEL}   Chave Externa

Verificar a label Empresa
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Empresa')]
	Element Should Contain  ${LABEL}   Empresa

Verificar a label Nome
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Nome')]
	Element Should Contain  ${LABEL}   Nome

Verificar a label Nome Fantasia
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Nome Fantasia')]
	Element Should Contain  ${LABEL}   Nome Fantasia



#VERIFY

Verificar a label Pesquisa
	${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Pesquisa

Verificar o campo Empresa
	${LABEL}      Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[1]
	${CAMPO}      Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr/td/span/select

	Element Should Contain             ${LABEL}   Empresa
 	Element Attribute Value Should Be  ${CAMPO}   name   codiempr

Verificar o campo Nome
	${LABEL}      Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[1]
	${CAMPO}      Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr/td/input

	Element Should Contain             ${LABEL}   Nome
 	Element Attribute Value Should Be  ${CAMPO}   name   nomeempr

Verificar o campo Nome Fantasia
	${LABEL}      Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[1]
	${CAMPO}      Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[2]/table/tbody/tr/td/input

	Element Should Contain             ${LABEL}   Nome Fantasia
 	Element Attribute Value Should Be  ${CAMPO}   name   apelempr

Verificar o campo Chave Externa
	${LABEL}      Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[1]
	${CAMPO}      Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr/td/input

	Element Should Contain             ${LABEL}   Chave Externa
 	Element Attribute Value Should Be  ${CAMPO}   name   external_key
