*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Identificação | Colaborador | Empregado


# SCREEN
Acessar Tela Empregado
  [Arguments]    ${STATUS}=ABRIR

  ${OBJ}         Set Variable  SCN
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${SCREENNAME}  Set Variable  Histórico de Colaborador
      ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  ELSE
    ${SCREENNAME}  Set Variable  Empregado
    ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[3]
  END
  ${APPNAME}     Set Variable  ctrgravahistorico
  

  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      Wait Until Element is Visible  ${ELEMENT}
      Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  ELSE
    IF  '${STATUS}' == 'ABRIR'
    
      Mudar para Janela de Nível 1
      Wait Until Element is Visible  ${ELEMENT}
      Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
    
    ELSE
        Fechar Janela Atual
    END
  END

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



Acessar Tela Parceiro
  [Arguments]    ${STATUS}=ABRIR

  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Parceiro
  ${APPNAME}     Set Variable  ctrgravahistorico
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  IF  '${STATUS}' == 'ABRIR'
  
    Mudar para Janela de Nível 1
    Wait Until Element is Visible  ${ELEMENT}
    Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  
  ELSE
      Fechar Janela Atual
  END
  
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



Acessar Tela Terceiro
  [Arguments]    ${STATUS}=ABRIR

  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Terceiro
  ${APPNAME}     Set Variable  ctrgravahistorico
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  IF  '${STATUS}' == 'ABRIR'
  
    Mudar para Janela de Nível 1
    Wait Until Element is Visible  ${ELEMENT}
    Element Text Should Be  ${ELEMENT}  ${SCREENNAME}
  
  ELSE
      Fechar Janela Atual
  END
  
  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


#BUTTON
#resource_btn.

Clicar No Botão Buscar Dados Externos Para Crachá
  ${ELEMENT}  Set Variable  id=cap_numtbhistocrach

  Wait Until Element Is Visible    ${ELEMENT}
  Click Element  ${ELEMENT}

  Switch Window  locator=NEW
  Maximize Browser Window

Selecionar um item no campo Escala "${ESCALA}"
  Select From List By Label  name=cmbtbescal        ${ESCALA}

Selecionar um item no campo Centro de Custo "${CC}"
  Select From List By Label  name=txttbcentrcusto     ${CC}




#VERIFY

Verificar o campo Filial
	${LABEL}      Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	${CHECKBOX}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[2]/select

	Element Should Contain  ${LABEL}   Filial
 	Element Attribute Value Should Be  ${CHECKBOX}   name   cmbtbfilia

Verificar a label Local
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	Element Should Contain  ${LABEL}   Local

Verificar a label Cargo
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	Element Should Contain  ${LABEL}   Cargo

Verificar o campo Escala
	${LABEL}      Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	${CHECKBOX}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[4]/td[2]/select

	Element Should Contain  ${LABEL}   Escala
 	Element Attribute Value Should Be  ${CHECKBOX}   name   cmbtbescal

Verificar o campo Crachá
	${LABEL}      Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[5]/td[1]
	${CHECKBOX}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[5]/td[2]/input[1]

	Element Should Contain  ${LABEL}   Crachá
 	Element Attribute Value Should Be  ${CHECKBOX}   name   numtbhistocrach

Verificar a label Centro de Custo
	${LABEL}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[6]/td[1]
	Element Should Contain  ${LABEL}   Centro de Custo


#FIELD

Selecionar uma opção no campo Filial "${FILIAL}"
  Select From List By Label  xpath=//*[@name="cmbtbfilia"]  ${FILIAL}

Selecionar uma opção no campo Escala "${ESCALA}"
  Select From List By Label  xpath=//*[@name="cmbtbescal"]  ${ESCALA}

Preencher o campo Crachá "${CRACHA}"
  Select From List By Label  xpath=//*[@name="numtbhistocrach"]  ${CRACHA}