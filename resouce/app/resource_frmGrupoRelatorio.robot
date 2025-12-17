*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Relatórios | Grupo de Relatório

# SCREEN
Acessar Tela Grupo de Relatório (Atualização)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Grupo de Relatório (Atualização)
  ${APPNAME}     Set Variable  frmGrupoRelatorio
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

Acessar Tela Grupo de Relatório (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Grupo de Relatório (Inclusão)
  ${APPNAME}     Set Variable  frmGrupoRelatorio
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

#BUTTON
#resource_btn.

#FIELD
Preencher o campo Nome do Grupo "${GRUPO}"
  Input Text  xpath=//*[@name="nomegruporelat"][@type="text"]  ${GRUPO}

Selecionar os grupos desejados no campo Grupo de Usuários
#Seleciona o primeiro grupo
  Click Element    xpath=//*[@id="idAjaxSelect_updgrupousuario"]/select/option[1]
#Clica no botão incluir
  Click Element    xpath=//*[@id="id_read_off_updgrupousuario"]/table/tbody/tr/td[2]/input[2]

Selecionar os relatórios desejados no campo Relatórios
#Seleciona a primeira opção.
  Click Element    xpath=//*[@id="idAjaxSelect_updgruporelatorio"]/select/option[1]
#Clica no botão incluir
  Click Element    xpath=//*[@id="id_read_off_updgruporelatorio"]/table/tbody/tr/td[2]/input[2]


#VERIFY

Verificar a label Código do Grupo
	${LABEL}   Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[1]/td[1]/table/tbody/tr/td[1]/span[1]/span
	Element Should Contain  ${LABEL}   Código do Grupo

Verificar o campo Nome do Grupo
	${LABEL}   Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/table/tbody/tr/td[1]/span[1]/span
	${CAMPO}   Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/table/tbody/tr/td[1]/span[3]/input
	
	Element Should Contain  ${LABEL}   Nome do Grupo
 	Element Attribute Value Should Be  ${CAMPO}   name   nomegruporelat

Verificar o campo Grupo de Usuários
	${LABEL}    Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	${CAMPO1}   Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/table/tbody/tr/td[1]/span[2]/table/tbody/tr/td[1]/span/select
	${CAMPO2}   Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/table/tbody/tr/td[1]/span[2]/table/tbody/tr/td[3]/select

	Element Should Contain  ${LABEL}   Grupo de Usuários
 	Element Attribute Value Should Be  ${CAMPO1}   name   updgrupousuario_orig
  Element Attribute Value Should Be  ${CAMPO2}   name   updgrupousuario_dest

Verificar o campo Relatórios
	${LABEL}    Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	${CAMPO1}   Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td[1]/span[2]/table/tbody/tr/td[1]/span/select
  ${CAMPO2}   Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td[1]/span[2]/table/tbody/tr/td[3]/select
	
	Element Should Contain  ${LABEL}   Relatórios
 	Element Attribute Value Should Be  ${CAMPO1}   name   updgruporelatorio_orig
  Element Attribute Value Should Be  ${CAMPO2}   name   updgruporelatorio_dest

#VERIFY (Inclusão)

Verificar o campo Nome do Grupo (Inclusão)
	${LABEL}   Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr/td[2]/table/tbody/tr/td[1]/span[1]/span
	${CAMPO}   Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[1]/tbody/tr/td/div/table/tbody/tr/td[2]/table/tbody/tr/td[1]/span[3]/input
	
	Element Should Contain  ${LABEL}   Nome do Grupo
 	Element Attribute Value Should Be  ${CAMPO}   name   nomegruporelat

Verificar o campo Grupo de Usuários (Inclusão)
	${CAMPO1}   Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/table/tbody/tr/td[1]/span[2]/table/tbody/tr/td[1]/span/select
	${CAMPO2}   Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td[1]/table/tbody/tr/td[1]/span[2]/table/tbody/tr/td[3]/select

 	Element Attribute Value Should Be  ${CAMPO1}   name   updgrupousuario_orig
  Element Attribute Value Should Be  ${CAMPO2}   name   updgrupousuario_dest

Verificar o campo Relatórios (Inclusão)
	${LABEL}    Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	${CAMPO1}   Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td[1]/span[2]/table/tbody/tr/td[1]/span/select
  ${CAMPO2}   Set Variable  xpath=/html/body/form[6]/table/tbody/tr[3]/td/table[3]/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td[1]/span[2]/table/tbody/tr/td[3]/select
	
	Element Should Contain  ${LABEL}   Relatórios
 	Element Attribute Value Should Be  ${CAMPO1}   name   updgruporelatorio_orig
  Element Attribute Value Should Be  ${CAMPO2}   name   updgruporelatorio_dest
