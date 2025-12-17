*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Estrutura | Planta

# SCREEN
Acessar Tela Consulta de Empresas (Busca Externa)
  ${OBJ}         Set Variable  SCN
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Empresa
    ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[4]
  ELSE
    ${SCREENNAME}  Set Variable  Consulta de Empresas
    ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  ${APPNAME}     Set Variable  cnsEmpresas


  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Empresa (Filtro)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Empresa (Filtro)
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  ${APPNAME}     Set Variable  cnsEmpresas

  Sleep  2s
  #Wait Until Element is Visible  ${ELEMENT}
  #Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#BUTTON
#resource_btn.



#FIELD
Selecionar uma opção no campo Código da Empresa "${CÓDIGO_DA_EMPRESA}"
	Select From List By Label  xpath=//*[@name="codiempr_cond"]  ${CÓDIGO_DA_EMPRESA}

Preencher o campo Código da Empresa "${CÓDIGO_DA_EMPRESA}"
	Input Text  xpath=//*[@name="codiempr"][@type="text"]  ${CÓDIGO_DA_EMPRESA}

Selecionar uma opção no campo Nome "${NOME}"
	Select From List By Label  xpath=//*[@name="nomeempr_cond"]  ${NOME}

Preencher o campo Nome "${NOME}"
	Input Text  xpath=//*[@name="nomeempr"][@type="text"]  ${NOME}

Selecionar uma opção no campo Nome Fantasia "${NOME_FANTASIA}"
	Select From List By Label  xpath=//*[@name="apelempr_cond"]  ${NOME_FANTASIA}

Preencher o campo Nome Fantasia "${NOME_FANTASIA}"
	Input Text  xpath=//*[@name="apelempr"][@type="text"]  ${NOME_FANTASIA}




#VERIFY

Verificar a label Código da Empresa
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr[3]/td/table/tbody/tr[9]/td/table/tbody/tr/td[2]/table/tbody/tr/td/table/tbody/tr[1]/td[3]/a/span
	Element Should Contain  ${LABEL}   Código da Empresa

Verificar a label Nome
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr[3]/td/table/tbody/tr[9]/td/table/tbody/tr/td[2]/table/tbody/tr/td/table/tbody/tr[1]/td[4]/a/span
	Element Should Contain  ${LABEL}   Nome

Verificar a label Nome Fantasia
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr[3]/td/table/tbody/tr[9]/td/table/tbody/tr/td[2]/table/tbody/tr/td/table/tbody/tr[1]/td[5]/a/span
	Element Should Contain  ${LABEL}   Nome Fantasia



#VERIFY

Verificar a label Pesquisa
	${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Pesquisa

Verificar o campo Código da Empresa
	${LABEL}      Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[1]
	${CAMPO}      Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[3]/table/tbody/tr/td/input

	Element Should Contain             ${LABEL}   Código da Empresa
 	Element Attribute Value Should Be  ${CAMPO}   name   codiempr

Verificar o campo Nome 
	${LABEL}      Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[1]
	${CAMPO}      Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[3]/table/tbody/tr/td/select

	Element Should Contain             ${LABEL}   Nome 
 	Element Attribute Value Should Be  ${CAMPO}   name   nomeempr_autocomp

Verificar o campo Nome Fantasia
	${LABEL}      Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[1]
	${CAMPO}      Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[3]/table/tbody/tr/td/select

	Element Should Contain             ${LABEL}   Nome Fantasia
 	Element Attribute Value Should Be  ${CAMPO}   name   apelempr_autocomp
