*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Entrada | Material | Movimentação

# SCREEN
Acessar Tela Cadastro de Movimentações
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  ctrMovimentacao
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	${SCREENNAME}  Set Variable   Movimentaçâo
	${ELEMENT}  Set Variable     xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
	${SCREENNAME}  Set Variable  Cadastro de Movimentações 
	${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Sleep  2s
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


#BUTTON
#resource_btn.



#FIELD
Selecionar uma opção no campo Movimentação "${MOVIMENTACAO}"
  Select From List By Label    xpath=//*[@name="slcmovimentacao"]  ${MOVIMENTACAO}

Selecionar uma opção no campo Tipo de Pessoa "${TIPO}"
  Select From List By Label    xpath=//*[@name="slctippes"] | //span[@id='select2-id_sc_field_slctippes-container']  ${TIPO}

Preencher o campo Código do Colaborador "${CODIGO}"    
  Input Text    xpath=//span[@id='select2-id_sc_field_slctippes-container']  ${CODIGO}

Preencher o campo Código do Visitante "${CODIGO}"    
  Input Text    xpath=//*[@name="idvisi"][@type="text"]    ${CODIGO}

#VERIFY

Verificar o campo Movimentação *
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${LABEL}      Set Variable  xpath=//span[contains(text(),'Movimentação')]
	${CAMPO}  	  Set Variable  xpath=//span[@id='select2-id_sc_field_slcmovimentacao-container']
	Element Attribute Value Should Be  ${CAMPO}   id   select2-id_sc_field_slcmovimentacao-container
	Element Should Contain  ${LABEL}   Movimentação
	ELSE
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[2]/table/tbody/tr/td[1]/span[2]/span/select
    Element Attribute Value Should Be  ${CAMPO}   name   slcmovimentacao
	Element Should Contain  ${LABEL}   Movimentação *
	END
	
 	

Verificar o campo Tipo de Pessoa *
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
		${LABEL}      Set Variable  xpath=//span[contains(text(),'Tipo de Pessoa')]
		${CAMPO}  	  Set Variable  xpath=//span[@id='select2-id_sc_field_slctippes-container']
	    Element Attribute Value Should Be  ${CAMPO}   id   select2-id_sc_field_slctippes-container
	ELSE
		${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
		${CAMPO}  	  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/span/select
		Element Attribute Value Should Be  ${CAMPO}   name   slctippes
	END
	Element Should Contain  ${LABEL}   Tipo de Pessoa
 	

Verificar a label Data
		IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${LABEL}      Set Variable  xpath=//span[contains(text(),'Data')]
	ELSE
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[4]/tbody/tr/td/div/table/tbody/tr/td[1]/table/tbody/tr/td[1]/span[1]/span
	END
	Element Should Contain  ${LABEL}   Data

Verificar a label Hora
		IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${LABEL}      Set Variable  xpath=//span[contains(text(),'Hora')]
	ELSE
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[4]/tbody/tr/td/div/table/tbody/tr/td[2]/table/tbody/tr/td[1]/span[1]/span
	END
	Element Should Contain  ${LABEL}   Hora

Verificar a label Colaborador
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${LABEL}      Set Variable  xpath=//td[contains(text(),'Colaborador')]
	ELSE
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	END
	Element Should Contain  ${LABEL}   Colaborador

Verificar o campo Código do Colaborador
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${LABEL}      Set Variable  xpath=//span[contains(text(),'Código do Colaborador')]
	${CAMPO}  	  Set Variable  xpath=//input[@name='idcolab']
	${BTN}		  Set Variable  xpath=//a[@id='cap_idcolab']	
	Element Attribute Value Should Be  ${BTN}   id   cap_idcolab
	ELSE
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/input
    END
	Element Should Contain  ${LABEL}   Código do Colaborador
 	Element Attribute Value Should Be  ${CAMPO}   name   idcolab

Verificar a label Empresa
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${LABEL}      Set Variable  xpath=//span[contains(text(),'Empresa')]
	ELSE
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	END
	Element Should Contain  ${LABEL}   Empresa

Verificar a label Tipo do Colaborador
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${LABEL}      Set Variable  xpath=//span[contains(text(),'Tipo do Colaborador')]
	ELSE
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	END
	Element Should Contain  ${LABEL}   Tipo do Colaborador

Verificar a label Cadastro
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${LABEL}      Set Variable  xpath=//span[contains(text(),'Cadastro')]
	ELSE
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[5]/td[1]
	END
	Element Should Contain  ${LABEL}   Cadastro

Verificar a label Nome do Colaborador
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${LABEL}      Set Variable  xpath=//span[contains(text(),'Nome do Colaborador')]
	ELSE
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[6]/td[1]
	END
	Element Should Contain  ${LABEL}   Nome do Colaborador  

Verificar a label Visitante
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${LABEL}      Set Variable  xpath=//td[contains(text(),'Visitante')]
	ELSE
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[3]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	END
	Element Should Contain  ${LABEL}   Visitante

Verificar o campo Código do Visitante
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${LABEL}      Set Variable  xpath=//span[contains(text(),'Código do Visitante')]
	${CAMPO}  	  Set Variable  xpath=//input[@name='idvisi']
	ELSE
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[3]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[3]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/input
    END
	Element Should Contain  ${LABEL}   Código do Visitante
 	Element Attribute Value Should Be  ${CAMPO}   name   idvisi

Verificar a label Tipo de Documento
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${LABEL}      Set Variable  xpath=//span[contains(text(),'Tipo de Documento')]
	ELSE
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[3]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	END
	Element Should Contain  ${LABEL}   Tipo de Documento

Verificar a label Número do Documento
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${LABEL}      Set Variable  xpath=//span[contains(text(),'Número do Documento')]
	ELSE
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[3]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	END
	Element Should Contain  ${LABEL}   Número do Documento

Verificar a label Nome do Visitante
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${LABEL}      Set Variable  xpath=//span[contains(text(),'Nome do Visitante')]
	ELSE
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[3]/tbody/tr/td/div/table/tbody/tr[5]/td[1]
	END
	Element Should Contain  ${LABEL}   Nome do Visitante

Verificar a label * Campos Obrigatórios
	IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${LABEL}      Set Variable  xpath=//span[contains(text(),'* Campos obrigatórios')]
	Element Should Contain  ${LABEL}    * Campos obrigatórios
	ELSE
	${LABEL}      Set Variable  xpath=//span[contains(text(),'* Campo de preenchimento obrigatório')]
	Element Should Contain  ${LABEL}    * Campo de preenchimento obrigatório
	END
	
