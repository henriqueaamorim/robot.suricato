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
resource_report.Navegar no Relatório: Situações

# SCREEN
Acessar Tela Valores de Entrada do Modelo - Modo Filtro
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Valores de Entrada do Modelo - Modo Filtro
  ${APPNAME}     Set Variable  consrelsituacoes
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[1]
   

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Situações
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Situações
  ${APPNAME}     Set Variable  consrelsituacoes
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
   

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"




#BUTTON
#resource_btn.



#VERIFY (Filtro)

Verificar a label Pesquisa
	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Pesquisa

Verificar o campo Código Situação
	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[2]/table/tbody/tr/td/span/select
	
	Element Should Contain  ${LABEL}   Código Situação
 	Element Attribute Value Should Be  ${CAMPO}   name   codisitu[]

Verificar o campo Mostrar Usuario:
	${LABEL}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[3]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[2]/table/tbody/tr/td/span/select
	
	Element Should Contain  ${LABEL}   Mostrar Usuario:
 	Element Attribute Value Should Be  ${CAMPO}   name   filmostrarusuario



#VERIFY

Verificar a label Código Situação
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[1]/font
	Element Should Contain  ${LABEL}   Código Situação

Verificar a label Situação
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[2]/font
	Element Should Contain  ${LABEL}   Situação

Verificar a label Tipo
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[3]/font
	Element Should Contain  ${LABEL}   Tipo

Verificar a label Bloq. Acesso
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[4]/font
	Element Should Contain  ${LABEL}   Bloq. Acesso

Verificar a label Bloq. Benef.
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[5]/font
	Element Should Contain  ${LABEL}   Bloq. Benef.

Verificar a label Mostrar Usuario:
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[6]/font
	Element Should Contain  ${LABEL}   Mostrar Usuario:

Verificar a label Empresa:
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/table/tbody/tr[3]/td/table/tbody/tr[1]/td[7]/font
	Element Should Contain  ${LABEL}   Empresa:



#FIELD
Selecionar uma opção no campo Código Situação "${CÓDIGO_SITUAÇÃO}"
	Select From List By Label  xpath=//*[@name="codisitu[]"]  ${CÓDIGO_SITUAÇÃO}

Selecionar uma opção no campo Mostrar Usuario "${MOSTRAR_USUARIO}"
	Select From List By Label  xpath=//*[@name="filmostrarusuario"]  ${MOSTRAR_USUARIO}

