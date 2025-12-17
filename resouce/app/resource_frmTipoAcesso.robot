*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Dispositivo | Tipo de Acesso

# SCREEN
Acessar Tela Tipo de Acesso (Atualização)
  ${OBJ}         Set Variable  SCN
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Tipo de Acesso
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[4]
  ELSE
    ${SCREENNAME}  Set Variable  Tipo de Acesso (Atualização)
    ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  ${APPNAME}  Set Variable  frmTipoAcesso
  

  Mudar Frame Aplicação "mnu_iframe"
  

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"




Acessar Tela Tipo de Acesso (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Tipo de Acesso (Inclusão)
  ${APPNAME}  Set Variable  frmTipoAcesso
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"





#BUTTON



#FIELD
Preencher o campo Descrição "${DESCRICAO}"
  Input Text  xpath=//*[@name="desctipoaces"][@type="text"]  ${DESCRICAO}

Preencher o campo Descrição Reduzida "${DESCRICAO_REDU}"
  Input Text  xpath=//*[@name="descreduaces"][@type="text"]  ${DESCRICAO_REDU}

Selecionar um item no campo Ação "${ACAO}"
  Select from list by label  xpath=//*[@name="codiacaoaces"]  ${ACAO}

Selecionar uma opção no campo Ação "${ACAO}"
  Select from list by label  xpath=//*[@name="idcolab"]  ${ACAO}
  
Selecionar uma opção no campo Função "${FUNCAO}"
  Select from list by label  xpath=//*[@name="codifunc"]  ${FUNCAO}

Clicar na opção "Sim" no campo Exibir no Monitoramento  
  Click Element  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[6]/td[2]/table/tbody/tr/td/input

Clicar na opção "Sim" no campo Trocar arquivo de som
  CLick Element  xpath=//*[@id="hidden_bloco_0"]/tbody/tr[8]/td[2]/table/tbody/tr/td/input



#VERIFY  



E verificar o campo Descrição                                  
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[2]/input
	
	Element Should Contain  ${LABEL}   Descrição
	Element Attribute Value Should Be  ${CAMPO}  name  desctipoaces

E verificar o campo Descrição Reduzida 
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/input
	
	Element Should Contain  ${LABEL}  Descrição Reduzida  
	Element Attribute Value Should Be  ${CAMPO}  name  descreduaces

E verificar o campo Ação 
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[3]/td[2]/select
	
	Element Should Contain  ${LABEL}  Ação 
	Element Attribute Value Should Be  ${CAMPO}  name  codiacaoaces

E verificar o campo Função 
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[4]/td[2]/select
	
	Element Should Contain  ${LABEL}  Função
	Element Attribute Value Should Be  ${CAMPO}  name  codifunc

E verificar o campo Exibir no Monitoramento 
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[5]/td[2]/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}  Exibir no Monitoramento
	Element Attribute Value Should Be  ${CAMPO}  name  tipoacesmoni[]

E verificar o campo Cor 
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[6]/td[2]/input
	
	Element Should Contain  ${LABEL}  Cor 
	Element Attribute Value Should Be  ${CAMPO}  name  coracesmoni

E verificar o campo Tocar arquivo de som 
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[7]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[7]/td[2]/table/tbody/tr/td/input
	
	Element Should Contain  ${LABEL}  Tocar arquivo de som
	Element Attribute Value Should Be  ${CAMPO}  name  beeptipoaces[]
  
E verificar o campo Som do Alarme 
  ${LABEL}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[8]/td[1]
	${CAMPO}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[8]/td[2]/input
	
	Element Should Contain  ${LABEL}  Som do Alarme
	Element Attribute Value Should Be  ${CAMPO}  name  somwaveaces