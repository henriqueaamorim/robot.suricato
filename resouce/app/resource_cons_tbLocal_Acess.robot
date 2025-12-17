*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Estrutura | Empresa | Area de Risco | Consulta


# SCREEN
Acessar Tela Área de Risco - Consulta
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  cons_tbLocal_Acess
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Área de Risco
    ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
    ${SCREENNAME}  Set Variable  Área de Risco - Consulta
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela Área de Risco - Filtro
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  cons_tbLocal_Acess
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Área de Risco
    ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME} ')]
  ELSE
    ${SCREENNAME}  Set Variable  Área de Risco - Consulta
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
#VERIFY

Verificar a label Código
  ${LABEL}  Set Variable  xpath=//div[contains(text(),'Código')]

  Element Should Contain  ${LABEL}   Código
	

Verificar a label Descrição
  ${LABEL}  Set Variable  xpath=//div[contains(text(),'Descrição')]

  Element Should Contain  ${LABEL}   Descrição

Verificar a label Endereço IP - Painel
  ${LABEL}  Set Variable  xpath=//div[contains(text(),'Endereço IP - Painel')]

  Element Should Contain  ${LABEL}   Endereço IP - Painel

#VERIFY

Verificar o campo Código
    ${LABEL}      Set Variable  xpath=//td[contains(text(),'Código')]
    ${CAMPO}  Set Variable  xpath=//input[@id='SC_codilocaaces']
  Element Should Contain  ${LABEL}   Código
  Element Attribute Value Should Be  ${CAMPO}   id   SC_codilocaaces
  
Verificar o campo Descrição
    ${LABEL}      Set Variable  xpath=//td[contains(text(),'Descrição')]
	  ${CAMPO}  Set Variable  xpath=//td[@class='scFilterHeaderFont'][4]

  Element Should Contain  ${LABEL}   Descrição
  Element Attribute Value Should Be  ${CAMPO}   class  scFilterHeaderFont

Verificar o campo Endereço IP - Painel	
    ${LABEL}      Set Variable  xpath=//td[contains(text(),'Endereço IP - Painel')]
	  ${CAMPO}  Set Variable  xpath=(//td[@class='scFilterLabelOdd'])[3]

  Element Should Contain  ${LABEL}   Endereço IP - Painel	
  Element Attribute Value Should Be  ${CAMPO}   class    scFilterLabelOdd
  
Verificar o campo Tempo Limite Dentro	
	  ${LABEL}      Set Variable  xpath=//td[contains(text(),'Tempo Limite Dentro')]
    ${CAMPO1}  Set Variable  xpath=//input[@id='SC_timeoutin_hor']
    ${CAMPO2}  Set Variable  xpath=//input[@id='SC_timeoutin_min']
    ${CAMPO3}  Set Variable  xpath=//input[@id='SC_timeoutin_seg']

  Element Should Contain  ${LABEL}   Tempo Limite Dentro	  
  Element Attribute Value Should Be  ${CAMPO1}   id    SC_timeoutin_hor
  Element Attribute Value Should Be  ${CAMPO2}   id    SC_timeoutin_min
  Element Attribute Value Should Be  ${CAMPO3}   id    SC_timeoutin_seg  
  

#BUTTON
#resource_btn.
