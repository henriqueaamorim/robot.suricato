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
resource_report.Navegar no Relatório: Colaboradores por Cargo

# SCREEN
Acessar Tela Colaboradores por Cargo - Filtro
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Colaboradores por Cargo
  ${APPNAME}     Set Variable  consrelcolaboradorporcargo
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[3]
   

  #Wait Until Element is Visible  ${ELEMENT}
  #Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Sleep  5s
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Colaboradores por Cargo
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Colaboradores por Cargo
  ${APPNAME}     Set Variable  consrelcolaboradorporcargo
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[3]
   

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

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

Verificar o campo Matrícula
	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[1]/td/table/tbody/tr/td/table/tbody/tr[3]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[1]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}   Matrícula
 	Element Attribute Value Should Be  ${CAMPO}   name   tbcolab_codimatr

Verificar o campo Situação
	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[1]/td/table/tbody/tr/td/table/tbody/tr[4]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[1]/td/table/tbody/tr/td/table/tbody/tr[4]/td[2]/table/tbody/tr/td/span/select
	
	Element Should Contain  ${LABEL}   Situação
 	Element Attribute Value Should Be  ${CAMPO}   name   vtbsitua_codisitu

Verificar o campo Alteração
	${LABEL}    Set Variable  xpath=/html/body/form[3]/table/tbody/tr[1]/td/table/tbody/tr/td/table/tbody/tr[5]/td[1]
	${CAMPO1}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[1]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr[1]/td/input[1]
	${CAMPO2}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[1]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr[1]/td/input[2]
	${CAMPO3}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[1]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr[1]/td/input[3]
	${CAMPO4}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[1]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr[2]/td/input[1]
	${CAMPO5}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[1]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr[2]/td/input[2]
	${CAMPO6}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[1]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr[2]/td/input[3]
	
	Element Should Contain  ${LABEL}   Alteração
 	Element Attribute Value Should Be  ${CAMPO1}   name   tbhistocargo_dataalte_dia
	Element Attribute Value Should Be  ${CAMPO2}   name   tbhistocargo_dataalte_mes
	Element Attribute Value Should Be  ${CAMPO3}   name   tbhistocargo_dataalte_ano
	Element Attribute Value Should Be  ${CAMPO4}   name   tbhistocargo_dataalte_input_2_dia
	Element Attribute Value Should Be  ${CAMPO5}   name   tbhistocargo_dataalte_input_2_mes
	Element Attribute Value Should Be  ${CAMPO6}   name   tbhistocargo_dataalte_input_2_ano

Verificar o campo Exibir Usuário:
	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[1]/td/table/tbody/tr/td/table/tbody/tr[6]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[1]/td/table/tbody/tr/td/table/tbody/tr[6]/td[2]/table/tbody/tr/td/span/select
	
	Element Should Contain  ${LABEL}   Exibir Usuário:
 	Element Attribute Value Should Be  ${CAMPO}   name   filtroexibeusuario



#VERIFY

Verificar a label Situação
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[2]/td[1]/font/b
	Element Should Contain  ${LABEL}   Situação

Verificar a label Matrícula
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[2]/td[2]/font/b/a/font
	Element Should Contain  ${LABEL}   Matrícula

Verificar a label Nome do Colaborador
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[2]/td[3]/font/b
	Element Should Contain  ${LABEL}   Nome do Colaborador

Verificar a label Cargo
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[2]/td[4]/font/b/a/font
	Element Should Contain  ${LABEL}   Cargo

Verificar a label Alteração
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[2]/td[5]/font/b/a/font
	Element Should Contain  ${LABEL}   Alteração

Verificar a label Exibir Usuário:
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[2]/td[6]/font/b
	Element Should Contain  ${LABEL}   Exibir Usuário:
