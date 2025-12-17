*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Veículos | Cadastro | Situações

# SCREEN
Acessar Tela Consulta Situações para Veículos - Modo Busca
  ${OBJ}         Set Variable  SCN
  ${APPNAME}     Set Variable  cnssituacaoveiculo
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Situações para Veículos - Modo Busca
  	${ELEMENT}     Set Variable  xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
    ${SCREENNAME}  Set Variable  Consulta Situações para Veículos - Modo Busca
	${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END 
   
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela Situações para Veículos - Modo Busca (Filtro)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}     Set Variable  cnssituacaoveiculo
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Situações para Veículos - Modo Busca
  	${ELEMENT}     Set Variable  xpath=//td[contains(text(),'${SCREENNAME} ')]
  ELSE
    ${SCREENNAME}  Set Variable  Consulta Situações para Veículos - Modo Busca
	${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END 
   
  Sleep  2s 
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#BUTTON
#resource_btn.


#FIELD
Preencher o campo Situação do Veículo "${NUM}"
  Input Text  xpath=//*[@name="situveic"][@type="text"]  ${NUM}

Preencher o campo Descrição "${DESC}"
  Input Text  xpath=//*[@name="descsitu"][@type="text"]  ${DESC}

Selecionar uma opção no campo Bloqueia Movimentação "${SIM}/${NAO}"
  Select from list by label  xpath=//*[@name="bloqmoviveic"]  ${SIM}
  Select from list by label  xpath=//*[@name="bloqmoviveic"]  ${NAO}  

Selecionar uma opção no campo Tipo "${TIP}"
  Select from list by label  xpath=//*[@name="tipositu"]  ${TIP}

#VERIFY

Verificar a label Situação do Veículo
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//div[contains(text(),'Situação do Veículo')]
  ELSE
    ${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[2]/font/b/a/font
  END
  Element Should Contain  ${LABEL}   Situação do Veículo

Verificar a label Descrição
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//div[contains(text(),'Descrição')]
  ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[3]/font/b/a/font
  END
  Element Should Contain  ${LABEL}   Descrição

Verificar a label Bloqueia Movimentação
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//div[contains(text(),'Bloqueia Movimentação')]
  ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[4]/font/b/a/font
  END
  Element Should Contain  ${LABEL}   Bloqueia Movimentação

Verificar a label Tipo
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}   Set Variable  xpath=//div[contains(text(),'Tipo')]
  ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr[2]/td[2]/table/tbody/tr[4]/td[2]/table/tbody/tr[1]/td[5]/font/b/a/font
  END
  Element Should Contain  ${LABEL}   Tipo

#VERIFY CAMPO

Verificar o campo: Situação do Veículo	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Situação do Veículo')]
	${CAMPO}      Set Variable  xpath=//input[@name='situveic']
	Element Should Contain             ${LABEL}   Situação do Veículo	
 	Element Attribute Value Should Be  ${CAMPO}   name   situveic

Verificar o campo: Descrição	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Descrição')]
	${CAMPO}      Set Variable  xpath=//input[@name='descsitu']
	Element Should Contain             ${LABEL}   Descrição	
 	Element Attribute Value Should Be  ${CAMPO}   name   descsitu

Verificar o campo: Bloqueia Movimentação	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Bloqueia Movimentação')]
	${CHECKBOX1}  Set Variable  xpath=(//input[@name='bloqmoviveic'])[1]
    ${CHECKBOX2}  Set Variable  xpath=/(//input[@name='bloqmoviveic'])[2]
	Element Should Contain             ${LABEL}   Bloqueia Movimentação
 	Element Attribute Value Should Be  ${CHECKBOX1}   name   bloqmoviveic
    Element Attribute Value Should Be  ${CHECKBOX1}   name   bloqmoviveic

Verificar o campo: Tipo	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Tipo')]
	${CAMPO}      Set Variable  xpath=//span[@id='select2-SC_tipositu-container']
	Element Should Contain             ${LABEL}   Tipo	
 	Element Attribute Value Should Be  ${CAMPO}   id   select2-SC_tipositu-container      
