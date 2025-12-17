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
resource_report.Navegar no Relatório: Consulta Benefícios por Colaboradores

# SCREEN
Acessar Tela Consulta Benefícios por Colaboradores
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Consulta Benefícios por Colaboradores
  ${APPNAME}     Set Variable  ctrselecaoservidoresxbeneficios
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]


  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



Acessar Tela Consulta Benefícios por Colaboradores (Resultado)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Consulta Benefícios por Colaboradores
  ${APPNAME}     Set Variable  ctrselecaoservidoresxbeneficios
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]


  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V2.png"


#BUTTON
Preencher campo Benefícios
  Input Text    xpath=//*[@id="id_read_off_codibene"]/input    1



#VERIFY (Filtro)

Verificar a label Período:
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Período:

Verificar o campo Inicial
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/span
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/input[1]
	
	Element Should Contain  ${LABEL}   Incial
 	Element Attribute Value Should Be  ${CAMPO}   name   perini

Verificar o campo Final
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[1]/span
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/table/tbody/tr/td[1]/span[2]/input[1]
	
	Element Should Contain  ${LABEL}   Final
 	Element Attribute Value Should Be  ${CAMPO}   name   perfim

Verificar o campo Benefícios(+)
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr/td[1]/span
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr/td[2]/table/tbody/tr/td[1]/span[2]/input
	
	Element Should Contain  ${LABEL}   Benefícios(+)
 	Element Attribute Value Should Be  ${CAMPO}   name   codibene

Verificar a label Totais
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[3]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Totais

Verificar a label Qtde Colaboradores Distribuídos neste(s) benefício(s)
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[3]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/table/tbody/tr/td[1]/span[1]/span
	Element Should Contain  ${LABEL}   Qtde Colaboradores Distribuídos neste(s) benefício(s)

Verificar a label Qtde Colaboradores Baixados neste(s) benefício(s)
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[3]/tbody/tr/td/div/table/tbody/tr[3]/td/table/tbody/tr/td[1]/span[1]/span
	Element Should Contain  ${LABEL}   Qtde Colaboradores Baixados neste(s) benefício(s)

#FIELD
Preencher o campo Inicial "${INICIAL}"
	Input Text  xpath=//*[@name="perini"][@type="text"]  ${INICIAL}
	
Preencher o campo Final "${FINAL}"
	Input Text  xpath=//*[@name="perfim"][@type="text"]  ${FINAL}
	
Preencher o campo Final "${FINAL}"
	Input Text  xpath=//*[@name="codibene"][@type="text"]  ${FINAL}
	#Necessário clicar fora para validar a inserção do registro
	Click Element  xpath=//*[@id="id_label_codibene"]