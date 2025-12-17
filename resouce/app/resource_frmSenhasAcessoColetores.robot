*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Identificação | Colaborador | Senha

# SCREEN
Acessar Tela Senhas de Acesso nos Codins (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  frmSenhasAcessoColetores
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable    Senha de Acesso para Equipamento
    ${ELEMENT}     Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
    ${SCREENNAME}  Set Variable  Senhas de Acesso nos Codins (Inclusão) 
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  
Acessar Tela Senhas de Acesso nos Codins (Atualização)
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  frmSenhasAcessoColetores
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Senhas de Acesso nos Codins (Atualização)
    ${ELEMENT}  Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
    ${SCREENNAME}  Set Variable    Senha de Acesso para Equipamento
    ${ELEMENT}     Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#BUTTON
#resource_btn.

#FIELD
Preencher o campo Código do Colaborador "${CODIGO}"
  Input Text  xpath=//*[@name="idcolab"][@type="text"]  ${CODIGO}
  # Necessário clicar fora para salvar 
  Click Element    xpath=//*[@id="hidden_bloco_0"]/tbody/tr[4]/td[1]
  
Preencher o campo Nova Senha "${SENHA}"
  Input Text  xpath=//*[@name="novasenha"][@type="text"]  ${SENHA}

Preencher o campo Confirmação da Senha "${SENHA}"
  Input Text  xpath=//*[@name="confirmsenha"][@type="text"]  ${SENHA}




#VERIFY 

E verificar campo Código do Colaborador 
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[2]/input[1]
	
	Element Should Contain  ${LABEL}  Código do Colaborador 
	Element Attribute Value Should Be  ${CAMPO}  name  idcolab

E verificar campo Empresa 
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	Element Should Contain  ${LABEL}  Empresa

E verificar campo Tipo do Colaborador 
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	Element Should Contain  ${LABEL}  Tipo do Colaborador 


E verificar campo Matrícula
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	Element Should Contain  ${LABEL}  Matrícula


E verificar campo Nome do Colaborador 
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[1]
	Element Should Contain  ${LABEL}  Nome do Colaborador 

E verificar campo Nova Senha 
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[2]/input
	
	Element Should Contain  ${LABEL}  Nova Senha   
	Element Attribute Value Should Be  ${CAMPO}  name  novasenha 

E verificar campo Confirmação da Senha 
	${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[7]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[7]/td[2]/input
	
	Element Should Contain  ${LABEL}  Confirmação da Senha 
	Element Attribute Value Should Be  ${CAMPO}  name  confirmsenha