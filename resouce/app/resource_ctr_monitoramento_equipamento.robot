*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Controle | Monitoramento | Monitoramento Gráfico de Equipamentos

# SCREEN
Acessar Tela Monitoramento Gráfico de Equipamentos
#(246)(249)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Monitoramento Gráfico de Equipamentos
  ${APPNAME}     Set Variable  ctr_monitoramento_equipamento
  ${ELEMENT}     Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]

  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

#BUTTON
#resource_btn.



#VERIFY LABELS (246)(249)
Verificar a label Empresa (Bloco)
#(246)(249)
  ${LABEL}  Set Variable  xpath=//th[contains(text(),'Empresa')]
  Element Should Contain  ${LABEL}  Empresa

Verificar a label Planta (Bloco)
#(246)(249)
  ${LABEL}  Set Variable  xpath=//th[contains(text(),'Planta')]
  Element Should Contain  ${LABEL}  Planta

Verificar a label Codin (Bloco)
#(246)(249)
  ${LABEL}  Set Variable  xpath=//th[contains(text(),'Codin')]


#VERIFY LABELS (246)(249)

Verificar o campo: Empresa (Bloco)
#(246)(249)
   ${LABEL}      Set Variable   xpath=//td[contains(text(),'Empresa')]
	 ${CAMPO}      Set Variable   xpath=//select[@name='select_empresa']
   Sleep  2s
	 Element Should Contain              ${LABEL}    Empresa
   Element Attribute Value Should Be   ${CAMPO}    name   select_empresa

Verificar o campo: Planta (Bloco)
#(246)(249)
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Planta')]
	${CAMPO}      Set Variable  xpath=//select[@name='select_planta']
	Element Should Contain             ${LABEL}   Planta
 	Element Attribute Value Should Be  ${CAMPO}   name   select_planta

Verificar o campo: Codin (Bloco)
#(246)(249)
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Codin')]
	${CAMPO}      Set Variable  xpath=//select[@name='select_codin']
	Element Should Contain             ${LABEL}   Codin
 	Element Attribute Value Should Be  ${CAMPO}   name    select_codin
