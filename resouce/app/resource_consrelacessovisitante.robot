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
resource_report.Navegar no Relatório: Acesso de Visitante

# SCREEN
Acessar Tela Relatório de Acesso de Visitantes - Filtro
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Relatório de Acesso de Visitantes
  ${APPNAME}     Set Variable  consrelacessovisitante
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[1]
   

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

Acessar Tela Relatório de Acesso de Visitantes
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Relatório de Acesso de Visitantes
  ${APPNAME}     Set Variable  consrelacessovisitante
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
   

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"



#BUTTON
#resource_btn.



#VERIFY (Filtro)

Verificar o campo Nome Visitante
	${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}   Nome Visitante
 	Element Attribute Value Should Be  ${CAMPO}   name   nomepess

Verificar o campo Data
	${LABEL}    Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[1]
	${CAMPO1}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr[1]/td/input[1]
	${CAMPO2}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr[1]/td/input[2]
	${CAMPO3}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr[1]/td/input[3]
	${CAMPO4}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr[2]/td/input[1]
	${CAMPO5}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr[2]/td/input[2]
	${CAMPO6}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr[2]/td/input[3]
	
	Element Should Contain  ${LABEL}   Data
 	Element Attribute Value Should Be  ${CAMPO1}   name   dataaces_dia
	Element Attribute Value Should Be  ${CAMPO2}   name   dataaces_mes
	Element Attribute Value Should Be  ${CAMPO3}   name   dataaces_ano
	Element Attribute Value Should Be  ${CAMPO4}   name   dataaces_input_2_dia
	Element Attribute Value Should Be  ${CAMPO5}   name   dataaces_input_2_mes
	Element Attribute Value Should Be  ${CAMPO6}   name   dataaces_input_2_ano

Verificar o campo Hora
	${LABEL}    Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[1]
	${CAMPO1}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td/input
	${CAMPO2}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[2]/table/tbody/tr[2]/td/input

	Element Should Contain  ${LABEL}   Hora
 	Element Attribute Value Should Be  ${CAMPO1}   name   horaaces
	Element Attribute Value Should Be  ${CAMPO2}   name   horaaces_input_2

Verificar o campo Tipo
	${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[2]/table/tbody/tr/td/select
	
	Element Should Contain  ${LABEL}   Tipo
 	Element Attribute Value Should Be  ${CAMPO}   name   tipoaces

Verificar o campo Planta
	${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[6]/td[2]/table/tbody/tr/td/select
	
	Element Should Contain  ${LABEL}   Planta
 	Element Attribute Value Should Be  ${CAMPO}   name   codiplan

Verificar o campo Codin
	${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[7]/td[2]/table/tbody/tr/td/select
	
	Element Should Contain  ${LABEL}   Codin
 	Element Attribute Value Should Be  ${CAMPO}   name   codicole



#VERIFY

Verificar a label Nome Visitante
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[1]/font
	Element Should Contain  ${LABEL}   Nome Visitante

Verificar a label Tipo Documento Visitante
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[2]/font
	Element Should Contain  ${LABEL}   Tipo Documento Visitante

Verificar a label Número Documento Visitante
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[3]/font
	Element Should Contain  ${LABEL}   Número Documento Visitante

Verificar a label Empresa Visitante
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[4]/font
	Element Should Contain  ${LABEL}   Empresa Visitante

Verificar a label Tipo Colaborador Visitado
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[5]/font
	Element Should Contain  ${LABEL}   Tipo Colaborador Visitado

Verificar a label Matricula Visitado
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[6]/font
	Element Should Contain  ${LABEL}   Matricula Visitado

Verificar a label Colaborador Visitado
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[7]/font
	Element Should Contain  ${LABEL}   Colaborador Visitado

Verificar a label Planta
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[8]/font
	Element Should Contain  ${LABEL}   Planta

Verificar a label Codin
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[9]/font
	Element Should Contain  ${LABEL}   Codin

Verificar a label Crachá
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[10]/font
	Element Should Contain  ${LABEL}   Crachá

Verificar a label Tipo
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[11]/font
	Element Should Contain  ${LABEL}   Tipo

Verificar a label Direção
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[12]/font
	Element Should Contain  ${LABEL}   Direção

Verificar a label Data/Hora Acesso
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[13]/font
	Element Should Contain  ${LABEL}   Data/Hora Acesso

Verificar a label Descrição
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[14]/font
	Element Should Contain  ${LABEL}   Descrição

Verificar a label Marcação
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[15]/font
	Element Should Contain  ${LABEL}   Marcação
