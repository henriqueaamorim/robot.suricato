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
resource_report.Navegar no Relatório: Agendamento de Visitantes

# SCREEN
Acessar Tela Agendamento de Vistantes
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Agendamento de Vistantes
  ${APPNAME}     Set Variable  consrelagendamentovisitantes
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
   

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

Acessar Tela Valores de Entrada do Modelo
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Valores de Entrada do Modelo
  ${APPNAME}     Set Variable  consrelagendamentovisitantes
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[1]
   

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


#BUTTON
#resource_btn.



#VERIFY (Filtro)

Verificar a label Pesquisa
	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Pesquisa

Verificar o campo Exibir Usuário:
	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr/td/span/select
	
	Element Should Contain  ${LABEL}   Exibir Usuário:
 	Element Attribute Value Should Be  ${CAMPO}   name   filtroexibeusuario



#VERIFY

Verificar a label Data Prevista
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[1]/font/b/a/font
	Element Should Contain  ${LABEL}   Data
	Element Should Contain  ${LABEL}   Prevista

Verificar a label Hora Prevista
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[2]/font/b/a/font
	
	Element Should Contain  ${LABEL}   Hora
	Element Should Contain  ${LABEL}   Prevista

Verificar a label Número Documento
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[3]/font/b/a/font
	Element Should Contain  ${LABEL}   Número
	Element Should Contain  ${LABEL}   Documento

Verificar a label Nome do Visitante
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[4]/font/b/a/font
	
	Element Should Contain  ${LABEL}   Nome do
	Element Should Contain  ${LABEL}   Visitante

Verificar a label Empresa
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[5]/font/b/a/font
	Element Should Contain  ${LABEL}   Empresa

Verificar a label Pessoa Visitada
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[6]/font/b/a/font
	Element Should Contain  ${LABEL}   Pessoa
	Element Should Contain  ${LABEL}   Visitada

Verificar a label Autorizador
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[7]/font/b/a/font
	Element Should Contain  ${LABEL}   Autorizador
