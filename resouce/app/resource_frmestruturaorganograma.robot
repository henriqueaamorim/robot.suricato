*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***

${COL_CODIGO}     xpath=//*[@id='tit_consestruturaorganograma#?#1']/td[2]
${COL_DESCRICAO}  xpath=//*[@id='tit_consestruturaorganograma#?#1']/td[3]
${TXT_CODIGO}     name=codiorgaloca
${TXT_DESCRICAO}  name=nomeorga

*** Keywords ***

# MENU
resource_mnu.Clicar No Menu Estrutura | Empresa | Organograma

# SCREEN

Acessar Tela Estrutura Organograma (Inclusão)
  ${OBJ}         Set Variable  SCN
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
      ${SCREENNAME}  Set Variable  Estrutura Organograma
      ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[1]
  ELSE
      ${SCREENNAME}  Set Variable  Estrutura Organograma (Inclusão)
      ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  ${APPNAME}     Set Variable  frmestruturaorganograma
  

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



Acessar Tela Estrutura Organograma (Atualização)
  ${OBJ}         Set Variable  SCN
  
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Estrutura Organograma
    ${FRAME}  Set Variable  xpath=/html/body/div[4]/iframe
    ${ELEMENT}     Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td/table/tbody/tr[1]/td[6]
    
    Mudar Frame Aplicação "${FRAME}"

  ELSE
    ${SCREENNAME}  Set Variable  Estrutura Organograma (Atualização)
    ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  
  END
  ${APPNAME}     Set Variable  frmestruturaorganograma
  
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


#FIELD
Preencher Campo Descrição "${DESCRICAO}"
  Input Text  xpath=//*[@name="nomeorga"][@type="text"]  ${DESCRICAO}

#ALERT
Verificar Alerta Descrição Faltando
  ${message} =	Handle Alert

#VERIFY
Verificar o campo Descrição* 
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${LABEL}  Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr/td[1]
    ${CAMPO}  Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr/td[2]/table/tbody/tr/td[1]/span[2]/input
  ELSE
    ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr/td[1]
    ${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr/td[2]/input
  END

  Element Should Be Visible  ${LABEL}
  Element Attribute Value Should Be  ${CAMPO}  name  nomeorga

E verificar a label Código
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${LABEL}  Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[1]
  ELSE
    ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[1]
  END
  Element Should Be Visible  ${LABEL}

Verificar o campo Descrição* (Atualização)
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${LABEL}  Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/input
    ${CAMPO}  Set Variable  xpath=/html/body/form[8]/table/tbody/tr/td/div/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/input
  ELSE
    ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
    ${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/input
  END

  Element Should Be Visible  ${LABEL}
  Element Attribute Value Should Be  ${CAMPO}  name  nomeorga
