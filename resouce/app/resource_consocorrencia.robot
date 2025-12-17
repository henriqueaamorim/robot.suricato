*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Registro | Ocorrência | Cadastro

# SCREEN
Acessar Tela: Ocorrência (Consulta)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  consocorrencia
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable   Ocorrência
  ${ELEMENT}     Set Variable   xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
  ${SCREENNAME}  Set Variable  Consulta de Ocorrências
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela: Ocorrência (Filtro)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  consocorrencia
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable   Ocorrência (Filtro)
  ${ELEMENT}     Set Variable   xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
  ${SCREENNAME}  Set Variable  Consulta de Ocorrências
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
  


#BUTTON
#resource_btn.

VERIFY LABELS

Verificar a label: Planta
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Planta')]
	Element Should Contain  ${LABEL}   Planta

Verificar a label: Data da Ocorrência
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Data da Ocorrência')]
	Element Should Contain  ${LABEL}   Data da Ocorrência

Verificar a label: Hora da Ocorrência
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Hora da Ocorrência')]
	Element Should Contain  ${LABEL}   Hora da Ocorrência

Verificar a label: Sequência
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Sequência')]
	Element Should Contain  ${LABEL}   Sequência

Verificar a label: Tipo
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Tipo')]
	Element Should Contain  ${LABEL}  Tipo

Verificar a label: Descrição
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Descrição')]
	Element Should Contain  ${LABEL}  Descrição

#VERIFY CAMPOS

Verificar a label Pesquisa
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Pesquisa')]
	Element Should Contain  ${LABEL}   Pesquisa

Verificar o campo: Planta
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Planta')]
	${CAMPO}      Set Variable  xpath=//span[@class='select2-selection select2-selection--single']
	Element Should Contain             ${LABEL}   Planta
  Element Attribute Value Should Be  ${CAMPO}  class   select2-selection select2-selection--single

Verificar o campo: Data da Ocorrência	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Data da Ocorrência')]
	${CAMPO1}      Set Variable  xpath=//input[@name='dataocorport_dia']
  ${CAMPO2}      Set Variable  xpath=//input[@name='dataocorport_mes']
  ${CAMPO3}      Set Variable  xpath=//input[@name='dataocorport_ano']
	Element Should Contain             ${LABEL}    Data da Ocorrência	
 	Element Attribute Value Should Be  ${CAMPO1}   name   dataocorport_dia
  Element Attribute Value Should Be  ${CAMPO2}   name   dataocorport_mes
  Element Attribute Value Should Be  ${CAMPO3}   name   dataocorport_ano

Verificar o campo: Hora da Ocorrência	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Hora da Ocorrência')]
	${CAMPO1}      Set Variable  xpath=//input[@name='horaocorport_hor']
  ${CAMPO2}      Set Variable  xpath=//input[@name='horaocorport_min']
  ${CAMPO3}      Set Variable  xpath=//input[@name='horaocorport_input_2_hor']
  ${CAMPO4}      Set Variable  xpath=//input[@name='horaocorport_input_2_min']
	Element Should Contain             ${LABEL}   Hora da Ocorrência	
 	Element Attribute Value Should Be  ${CAMPO1}   name   horaocorport_hor
  Element Attribute Value Should Be  ${CAMPO2}   name   horaocorport_min
  Element Attribute Value Should Be  ${CAMPO3}   name   horaocorport_input_2_hor
  Element Attribute Value Should Be  ${CAMPO4}   name   horaocorport_input_2_min

Verificar o campo: Tipo
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Tipo')]
	${CAMPO}      Set Variable  xpath=//span[@class='select2-selection select2-selection--single']
	Element Should Contain             ${LABEL}   Tipo
  Element Attribute Value Should Be  ${CAMPO}  class   select2-selection select2-selection--single
 	     
