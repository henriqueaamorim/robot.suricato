*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Relatórios | Consulta Impressa
# REPORT
resource_report.Navegar no Relatório: Grupo de Acesso

# SCREEN
Acessar Tela Valores de Entrada do Modelo
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Valores de Entrada do Modelo
  ${APPNAME}     Set Variable  consrelgrupopermissoes
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[1]
   

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Grupo de Acesso
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Grupo de Acesso
  ${APPNAME}     Set Variable  consrelgrupopermissoes
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
   

  Sleep  5s
  #Wait Until Element is Visible  ${ELEMENT}
  #Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

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

Verificar a label Acão
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[2]/td[1]/font/b
	Element Should Contain  ${LABEL}   Acão

Verificar a label Planta
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[2]/td[2]/font/b
	Element Should Contain  ${LABEL}   Planta

Verificar a label Codin
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[2]/td[3]/font/b
	Element Should Contain  ${LABEL}   Codin

Verificar a label Descrição
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[2]/td[4]/font/b
	Element Should Contain  ${LABEL}   Descrição

Verificar a label Início Faixa
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[2]/td[5]/font/b
	Element Should Contain  ${LABEL}   Início Faixa

Verificar a label Fim Faixa
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[2]/td[6]/font/b
	Element Should Contain  ${LABEL}   Fim Faixa
