*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.resource_mnu.Clicar No Menu Relatórios | Consulta Impressa
# REPORT
resource_report.Navegar no Relatório: Colaboradores por Local

# SCREEN
Acessar Tela Colaboradores por Local
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Colaboradores por Local
  ${APPNAME}     Set Variable  consrelcolaboradorporlocal
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[3]
   

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



Acessar Tela Colaboradores por Local - Filtro
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Colaboradores por Local
  ${APPNAME}     Set Variable  consrelcolaboradorporlocal
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[3]
   

  #Wait Until Element is Visible  ${ELEMENT}
  #Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Sleep  5s
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"



#BUTTON
#resource_btn.



#VERIFY (Filtro)

Verificar a label Pesquisa
	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[1]/td/table/tbody/tr/td/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Pesquisa

Verificar o campo Empresa
	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[1]/td/table/tbody/tr/td/table/tbody/tr[2]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[1]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr/td/span/select
	
	Element Should Contain  ${LABEL}   Empresa
 	Element Attribute Value Should Be  ${CAMPO}   name   tbcolab_codiempr

Verificar o campo Tipo
	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[1]/td/table/tbody/tr/td/table/tbody/tr[3]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[1]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr/td/span/select
	
	Element Should Contain  ${LABEL}   Tipo
 	Element Attribute Value Should Be  ${CAMPO}   name   vtbtipocolab_tipocola

Verificar o campo Matrícula
	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[1]/td/table/tbody/tr/td/table/tbody/tr[4]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[1]/td/table/tbody/tr/td/table/tbody/tr[4]/td[2]/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}   Matrícula
 	Element Attribute Value Should Be  ${CAMPO}   name   tbcolab_codimatr

Verificar o campo Situação
	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[1]/td/table/tbody/tr/td/table/tbody/tr[5]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[1]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr/td/span/select
	
	Element Should Contain  ${LABEL}   Situação
 	Element Attribute Value Should Be  ${CAMPO}   name   vtbsitua_codisitu

Verificar o campo Exibir Usuário:
	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[1]/td/table/tbody/tr/td/table/tbody/tr[6]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[1]/td/table/tbody/tr/td/table/tbody/tr[6]/td[2]/table/tbody/tr/td/span/select
	
	Element Should Contain  ${LABEL}   Exibir Usuário:
 	Element Attribute Value Should Be  ${CAMPO}   name   filtroexibeusuario



#VERIFY

Verificar a label Tipo
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[2]/td[1]/font/b
	Element Should Contain  ${LABEL}   Tipo

Verificar a label Situação
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[2]/td[2]/font/b
	Element Should Contain  ${LABEL}   Situação

Verificar a label Matrícula
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[2]/td[3]/font/b
	Element Should Contain  ${LABEL}   Matrícula

Verificar a label Nome do Colaborador
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[2]/td[4]/font/b
	Element Should Contain  ${LABEL}   Nome do Colaborador

Verificar a label Local
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[2]/td[5]/font/b
	Element Should Contain  ${LABEL}   Local
