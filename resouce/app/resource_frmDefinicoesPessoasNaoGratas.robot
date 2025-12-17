*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Configurações | Pessoa Não Grata

# SCREEN
Acessar Tela Definições Pessoas Não Gratas
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Definições Pessoas Não Gratas
  ${APPNAME}  Set Variable  frmDefinicoesPessoasNaoGratas
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[3]

  Mudar Frame Aplicação "mnu_iframe"
  
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"





#BUTTON
#resource_btn.

Clicar No Botão Buscar Dados Externos Para Código de Motivo para Demitidos
  ${ELEMENT}  Set Variable  id=cap_defcodmot

  Wait Until Element Is Visible    ${ELEMENT}
  Click Element  ${ELEMENT}

  Switch Window  locator=NEW
  Maximize Browser Window

Clicar No Botão Buscar Dados Externos Para Motivo do Bloqueio
  ${ELEMENT}  Set Variable  id=cap_defmotblo

  Wait Until Element Is Visible    ${ELEMENT}
  Click Element  ${ELEMENT}

  Switch Window  locator=NEW
  Maximize Browser Window

#FIELD
Clicar na opção "Sim" no campo Incluir Demitidos
  Click Element  xpath=//*[@id="idAjaxCheckbox_defincdem"]/table/tbody/tr/td/input

Preencher o campo Código de Motivo para Demitidos "${COD}"
  Input Text  xpath=//*[@name="defcodmot"][@type="text"]  ${COD}
  #Necessário clicar fora para validar a inserção
  Click Element  xpath=//*[@id="id_label_defmotblo"]

Preencher o campo Motivo do Bloqueio "${MOTIVO}"
  Input Text  xpath=//*[@name="defmotblo"][@type="text"]  ${MOTIVO}
  #Necessário clicar fora para validar a inserção
  Click Element  xpath=//*[@id="id_label_defmotblo"]

Clicar na opção "Sim" no campo Controla Homônimos
  Click Element  xpath=//*[@id="idAjaxCheckbox_defconhom"]/table/tbody/tr/td/input

Clicar na opção "Sim" no campo Libera Homônimos
  Click Element  xpath=//*[@id="idAjaxCheckbox_deflibhom"]/table/tbody/tr/td/input

Preencher o campo Mensagem para Colaborador Bloqueado "${MENSAGEM}"
  Input Text  xpath=//*[@name="defdesmcb"]  ${MENSAGEM}

Preencher o campo Mensagem para Visitante Bloqueado "${MENSAGEM}"
  Input Text  xpath=//*[@name="defdesmvb"]  ${MENSAGEM}



#VERIFY

Verificar o campo Incluir Demitidos
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${LABEL}      Set Variable  xpath=//span[contains(text(),'Incluir Demitidos')]
    ${CHECKBOX}   Set Variable  xpath=//input[@name='defincdem[]']
  ELSE
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	${CHECKBOX}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[2]/table/tbody/tr/td[1]/span[2]/div/table/tbody/tr/td/input
	END
	Element Should Contain  ${LABEL}   Incluir Demitidos
 	Element Attribute Value Should Be  ${CHECKBOX}   name   defincdem[]

Verificar o campo Código de Motivo para Demitidos
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${LABEL}      Set Variable  xpath=//span[contains(text(),'Código de Motivo para Demitidos')]
    ${CAMPO}   Set Variable  xpath=//input[@name='defcodmot']
  ELSE
	  ${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	  ${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/input
	END
	Element Should Contain  ${LABEL}   Código de Motivo para Demitidos
 	Element Attribute Value Should Be  ${CAMPO}   name   defcodmot

Verificar o campo Motivo do Bloqueio
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${LABEL}      Set Variable  xpath=//span[contains(text(),'Motivo do Bloqueio')]
    ${CAMPO}   Set Variable  xpath=//input[@name='defmotblo']
  ELSE
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[3]/td[2]/table/tbody/tr/td[1]/span[2]/input
	END
	Element Should Contain  ${LABEL}   Motivo do Bloqueio
 	Element Attribute Value Should Be  ${CAMPO}   name   defmotblo

Verificar o campo Controla Homônimos
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${LABEL}      Set Variable  xpath=//span[contains(text(),'Controla Homônimos')]
    ${CHECKBOX}   Set Variable  xpath=//input[@name='defconhom[]']
  ELSE
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	${CHECKBOX}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[4]/td[2]/table/tbody/tr/td[1]/span[2]/div/table/tbody/tr/td/input
	END
	Element Should Contain  ${LABEL}   Controla Homônimos
 	Element Attribute Value Should Be  ${CHECKBOX}   name   defconhom[]

Verificar o campo Libera Homônimos
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${LABEL}      Set Variable  xpath=//span[contains(text(),'Libera Homônimos')]
    ${CHECKBOX}   Set Variable  xpath=//input[@name='deflibhom[]']
  ELSE
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[5]/td[1]
	${CHECKBOX}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[5]/td[2]/table/tbody/tr/td[1]/span[2]/div/table/tbody/tr/td/input
	END
	Element Should Contain  ${LABEL}   Libera Homônimos
 	Element Attribute Value Should Be  ${CHECKBOX}   name   deflibhom[]

Verificar o campo Mensagem para Colaborador Bloqueado
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${LABEL}      Set Variable  xpath=//span[contains(text(),'Mensagem para Colaborador Bloqueado')]
    ${CAMPO}   Set Variable  xpath=//textarea[@name='defdesmcb']
  ELSE
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[6]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[6]/td[2]/table/tbody/tr/td[1]/span[2]/textarea
	END
	Element Should Contain  ${LABEL}   Mensagem para Colaborador Bloqueado
 	Element Attribute Value Should Be  ${CAMPO}   name   defdesmcb

Verificar o campo Mensagem para Visitante Bloqueado
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${LABEL}      Set Variable  xpath=//span[contains(text(),'Mensagem para Visitante Bloqueado')]
    ${CAMPO}   Set Variable  xpath=//textarea[@name='defdesmvb']
  ELSE
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[7]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[7]/td[2]/table/tbody/tr/td[1]/span[2]/textarea
	END
	Element Should Contain  ${LABEL}   Mensagem para Visitante Bloqueado
 	Element Attribute Value Should Be  ${CAMPO}   name   defdesmvb
