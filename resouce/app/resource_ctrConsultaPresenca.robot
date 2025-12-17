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
resource_report.Navegar no Relatório: Consulta de Presenças

# SCREEN
Acessar Tela Impressão de Relatório
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Impressão de Relatório
  ${APPNAME}     Set Variable  ctrConsultaPresenca
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
	IF  "${SERVER}" != "172.16.14.246"
    Wait Until Element is Visible  ${ELEMENT}
    Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  END
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



Acessar Tela Status de Presença - Colaborador
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Status de Presença - Colaborador
  ${APPNAME}     Set Variable  ctrConsultaPresenca
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]


  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



Acessar Tela Status de Presença - Visitante
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Status de Presença - Visitante
  ${APPNAME}     Set Variable  ctrConsultaPresenca
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]


  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"




#BUTTON

Clicar na box "Colaborador"
  Click Element    xpath=//*[@name="tipo"][@value="C"]
  resource_btn.Clicar No Botão OK

Clicar na box "Visitante"
  Click Element    xpath=//*[@name="tipo"][@value="V"]
  resource_btn.Clicar No Botão OK



#VERIFY (Filtro)

Verificar a label Data / Hora
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Data / Hora

Verificar o campo Tipo
	${LABEL}    Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	${BOTAO1}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td[1]/span[2]/div/table/tbody/tr/td[1]/input
  ${BOTAO2}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td[1]/span[2]/div/table/tbody/tr/td[2]/input
	
	Element Should Contain  ${LABEL}   Tipo
 	Element Attribute Value Should Be  ${BOTAO1}   value   C
  Element Attribute Value Should Be  ${BOTAO2}   value   V
