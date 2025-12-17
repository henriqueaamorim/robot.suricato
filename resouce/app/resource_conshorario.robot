*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Estrutura | Empresa | Escala | Horário de Escala


# SCREEN
Acessar Tela Consulta de Horários
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  conshorario
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Horário de Escala
    ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
    ${SCREENNAME}  Set Variable  Horários
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



Acessar Tela Horário de Escala (Filtro)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  conshorario
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}   Set Variable    Horário de Escala
    ${ELEMENT}      Set Variable    xpath=//td[contains(text(),'${SCREENNAME} ')]
  ELSE
    ${SCREENNAME}  Set Variable  Horários
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Sleep  3s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

#BUTTON
#resource_btn.

#FIELD
Preencher o campo Código do Horário "${COD}"
  Input Text  xpath=//*[@name="codihora"][@type="text"]  ${COD}

Preencher o campo Descrição do Horário "${DESC}"   
  Input Text  xpath=//*[@name="deschora"][@type="text"]  ${DESC}


#VERIFY LABELS

Verificar label Código do Horário
  ${LABEL}   Set Variable  xpath=//span[contains(text(),'Código do Horário')]
	Element Should Contain  ${LABEL}   Código do Horário

Verificar label Turno do Horário
	${LABEL}   Set Variable  xpath=//span[contains(text(),'Turno do Horário')]
	Element Should Contain  ${LABEL}   Turno do Horário

Verificar label Descrição do Horário
	${LABEL}   Set Variable  xpath=//span[contains(text(),'Descrição do Horário')]
	Element Should Contain  ${LABEL}    Descrição do Horário

Verificar label Tipo de Jornada do Horário
	${LABEL}   Set Variable  xpath=//span[contains(text(),'Tipo de Jornada do Horário')]
	Element Should Contain  ${LABEL}   Tipo de Jornada do Horário

Verificar label Jornada de Trabalho
  ${LABEL}   Set Variable  xpath=//td[contains(text(),'Jornada de Trabalho')]
	Element Should Contain  ${LABEL}   Jornada de Trabalho

Verificar label Faixa Horária Refeitório
	${LABEL}   Set Variable  xpath=//td[contains(text(),'Faixa Horária Refeitório')]
  Sleep  2s
	Element Should Contain  ${LABEL}   Faixa Horária Refeitório

Verificar label Faixas Horárias para Controle de Acesso
  ${LABEL}   Set Variable  xpath=//td[contains(text(),'Faixas Horárias para Controle de Acesso')]
  Sleep  2s
	Element Should Contain  ${LABEL}   Faixas Horárias para Controle de Acesso

#VERIFY CAMPOS

Verificar o campo Código do Horário (Filtro)
  ${LABEL}    Set Variable   xpath=//td[contains(text(),'Código do Horário')]
  ${CAMPO}    Set Variable   xpath=//input[@name='codihora']
	
  Element Attribute Value Should Be  ${CAMPO}  name   codihora
	Element Should Contain  ${LABEL}    Código do Horário 
 	

Verificar o campo Descrição do Horário (Filtro)
  ${LABEL}   Set Variable   xpath=//td[contains(text(),'Descrição do Horário')]
	${CAMPO}   Set Variable   xpath=//input[@name='deschora']
  
  Element Attribute Value Should Be  ${CAMPO}  name  deschora
  Element Should Contain  ${LABEL}   Descrição do Horário
	 




 

