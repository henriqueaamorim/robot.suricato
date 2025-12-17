*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Configurações | Configurações Gerais | Configurações de EPI

# SCREEN
Acessar Tela Configurações de EPI
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Configurações de EPI
  ${APPNAME}  Set Variable  ctrConfiguracoesEPI
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  



#BUTTON
#resource_btn.



#VERIFY

Verificar o campo Controle de EPI por Organograma
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	${CHECKBOX}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[2]/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}   Controle de EPI por Organograma
 	Element Attribute Value Should Be  ${CHECKBOX}   name   validade_epi_localorga[]

Verificar o campo Controle de EPI por Centro de Custo
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CHECKBOX}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}   Controle de EPI por Centro de Custo
 	Element Attribute Value Should Be  ${CHECKBOX}   name   validade_epi_centrocusto[]

Verificar o campo Controle de EPI por Cargo
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CHECKBOX}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}   Controle de EPI por Cargo
 	Element Attribute Value Should Be  ${CHECKBOX}   name   validade_epi_cargo[]

Verificar o campo Tempo de Tolerância (dias)
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/input
	
	Element Should Contain  ${LABEL}   Tempo de Tolerância (dias)
 	Element Attribute Value Should Be  ${CAMPO}   name   tolerancia_vencimento_epi

Verificar o campo Utiliza Codin de Beneficios para entrega de EPIs
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[1]
	${CHECKBOX}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[2]/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}   Utiliza Codin de Beneficios para entrega de EPIs
 	Element Attribute Value Should Be  ${CHECKBOX}   name   utiliza_beneficios[]

Verificar o campo Codin para entrega de EPIs
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[2]/select
	
	Element Should Contain  ${LABEL}   Codin para entrega de EPIs
 	Element Attribute Value Should Be  ${CAMPO}   name   codin_beneficios

Verificar a label Emails
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Emails

Verificar o campo Envio de Email antes do vencimento
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/select
	
	Element Should Contain  ${LABEL}   Envio de Email antes do vencimento
 	Element Attribute Value Should Be  ${CAMPO}   name   email_antes_vencimento 

Verificar o campo Envio de Email no vencimento
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/select
	
	Element Should Contain  ${LABEL}   Envio de Email no vencimento
 	Element Attribute Value Should Be  ${CAMPO}   name   email_no_vencimento

Verificar o campo Envio de Email após o vencimento
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/select
	
	Element Should Contain  ${LABEL}   Envio de Email após o vencimento
 	Element Attribute Value Should Be  ${CAMPO}   name   email_apos_vencimento


#FIELD
Selecionar a opção Controle de EPI por Organograma
	Click Element  xpath=//*[@name="validade_epi_localorga[]"]

Selecionar a opção Controle de EPI por Centro de Custo
	Click Element  xpath=//*[@name="validade_epi_centrocusto[]"]

Selecionar a opção Controle de EPI por Cargo
	Click Element  xpath=//*[@name="validade_epi_cargo[]"]

Preencher o campo Tempo de Tolerância (dias) "${TEMPO}"
	Input Text  xpath=//*[@name="tolerancia_vencimento_epi"][@type="text"]  ${TEMPO}

Selecionar a opção Utiliza Codin de Beneficios para entrega de EPIs
	Click Element  xpath=//*[@name="utiliza_beneficios[]"]

Selecionar uma opção no campo Codin para entrega de EPIs "${CODIN}"
	Select From List By Label  xpath=//*[@name="codin_beneficios"]  ${CODIN}

Selecionar uma opção no campo Envio de Email antes do vencimento "${ENVIO}"
	Select From List By Label  xpath=//*[@name="email_antes_vencimento"]  ${ENVIO}

Selecionar uma opção no campo Envio de Email no vencimento "${ENVIO}"
	Select From List By Label  xpath=//*[@name="email_no_vencimento"]  ${ENVIO}

Selecionar uma opção no campo Envio de Email após o vencimento "${ENVIO}"
	Select From List By Label  xpath=//*[@name="email_apos_vencimento"]  ${ENVIO}