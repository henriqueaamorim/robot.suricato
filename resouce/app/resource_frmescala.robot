*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot


*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Estrutura | Empresa | Escala | Cadastro de Escala

# SCREEN
Acessar Tela Cadastro de Escala (Atualização)
  ${OBJ}         Set Variable  SCN
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Escala
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[3]
  ELSE
    ${SCREENNAME}  Set Variable  Cadastro de Escala (Atualização)
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  
  ${APPNAME}  Set Variable  frmescala
  
  IF  "${SERVER}" == "172.16.14.248" or "${SERVER}" == "172.16.14.249" 
    Mudar Frame Aplicação "mnu_iframe"
    Mudar Frame Aplicação "nm_iframe_aba_frmescala_1"
  END

  Sleep  2s
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



Acessar Tela Cadastro de Escala (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  frmescala
  
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Escala
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[3]
  ELSE
    ${SCREENNAME}  Set Variable  Cadastro de Escala (Atualização)
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  
  IF  "${SERVER}" == "172.16.14.248" or "${SERVER}" == "172.16.14.249"
    Mudar Frame Aplicação "mnu_iframe"
    Mudar Frame Aplicação "nm_iframe_aba_frmescala_1"
  END

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"






#BUTTON
#resource_btn.

#FIELD
Preencher o campo Código da Escala "${CODIGO}"
  Input Text  xpath=//*[@name="codiesca"][@type="text"]  ${CODIGO}

Preencher o campo Descrição "${DESCRICAO}"
  Input Text  xpath=//*[@name="nomeesca"][@type="text"]  ${DESCRICAO}

Selecionar uma opção no campo Tipo da Escala "${ESCALA}"
  Click Element  xpath=//*[@id="idAjaxSelect_escatipo"]/span/span[1]/span/span[2]
  Select from list by label  xpath=//*[@id="idAjaxSelect_escatipo"]/span/span[1]  ${ESCALA}

#VERIFY
  
Verificar o campo Código da Escala  

  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
  ${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/input

  Element Should Contain  ${LABEL}  Código da Escala 
  Element Attribute Value Should Be  ${CAMPO}  name  codiesca


Verificar o campo Descrição
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
	  ${LABEL}      Set Variable  xpath=/html/body/form[8]/table/tbody/tr[1]/td/div/table/tbody/tr[3]/td/div[3]/table/tbody/tr[3]/td[1]/span[1]
	  ${CAMPO}      Set Variable  xpath=/html/body/form[8]/table/tbody/tr[1]/td/div/table/tbody/tr[3]/td/div[3]/table/tbody/tr[3]/td[2]/table/tbody/tr/td[1]/span[2]/input
  ELSE
    ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
    ${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/input
  END
  Element Should Contain  ${LABEL}  Descrição 
  Element Attribute Value Should Be  ${CAMPO}  name  nomeesca


Verificar o campo Tipo da Escala
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${LABEL}      Set Variable  xpath=/html/body/form[8]/table/tbody/tr[1]/td/div/table/tbody/tr[3]/td/div[3]/table/tbody/tr[4]/td[1]/span
	  ${CAMPO}      Set Variable  xpath=/html/body/form[8]/table/tbody/tr[1]/td/div/table/tbody/tr[3]/td/div[3]/table/tbody/tr[4]/td[2]/table/tbody/tr/td[1]/span[2]/span/select
  ELSE 
    ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
    ${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/select
  END
  Element Should Contain  ${LABEL}  Tipo da Escala	
  Element Attribute Value Should Be  ${CAMPO}  name  escatipo


#VERIFY

Verificar a label Código da Escala
	${LABEL}      Set Variable  xpath=/html/body/form[8]/table/tbody/tr[1]/td/div/table/tbody/tr[3]/td/div[3]/table/tbody/tr[2]/td[1]/span[1]
	Element Should Contain  ${LABEL}   Código da Escala

