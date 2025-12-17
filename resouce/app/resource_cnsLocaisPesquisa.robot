*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Estrutura | Empresa Terceira | Contratos

# SCREEN
Acessar Tela Consulta de Locais (Busca Externa)
  ${OBJ}         Set Variable  SCN
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable  Local
  ELSE
    ${SCREENNAME}  Set Variable  Consulta de Locais
  END
  ${APPNAME}     Set Variable  cnsLocaisPesquisa
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Sleep  3s
    Mudar Frame Aplicação "TB_iframeContent"
  END

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


Acessar Tela Local (Filtro)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Local
  ${APPNAME}     Set Variable  cnsLocaisPesquisa
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Sleep  2s
  #Wait Until Element is Visible  ${ELEMENT}
  #Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



#BUTTON
#resource_btn.

Selecionar label
  Click Element    name=codiorgaloca
  Select From List By Label    name=codiorgaloca     1 - Presidencia   



#FIELD
Preencher o campo Tabela de Organograma "${TABELA_DE_ORGANOGRAMA}"
	Input Text  xpath=//*[@name="tbestruorgan_codiorgaloca"][@type="text"]  ${TABELA_DE_ORGANOGRAMA}

Preencher o campo Descrição do Organograma "${DESCRIÇÃO_DO_ORGANOGRAMA}"
	Input Text  xpath=//*[@name="tbestruorgan_nomeorga"][@type="text"]  ${DESCRIÇÃO_DO_ORGANOGRAMA}

Preencher o campo Local "${LOCAL}"
	Input Text  xpath=//*[@name="tblocalorgan_locaorga"][@type="text"]  ${LOCAL}

Preencher o campo Descrição do Local "${DESCRIÇÃO_DO_LOCAL}"
	Input Text  xpath=//*[@name="tblocalorgan_nomeloca"][@type="text"]  ${DESCRIÇÃO_DO_LOCAL}




#VERIFY

Verificar a label Tabela de Organograma
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr[9]/td/table/tbody/tr[1]/td[2]
	Element Should Contain  ${LABEL}   Tabela de Organograma

Verificar a label Descrição do Organograma
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr[9]/td/table/tbody/tr[1]/td[3]
	Element Should Contain  ${LABEL}   Descrição do Organograma

Verificar a label Local
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr[9]/td/table/tbody/tr[1]/td[4]
	Element Should Contain  ${LABEL}   Local

Verificar a label Descrição do Local
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr[9]/td/table/tbody/tr[1]/td[5]
	Element Should Contain  ${LABEL}   Descrição do Local

Verificar a label Criação
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr[9]/td/table/tbody/tr[1]/td[6]
	Element Should Contain  ${LABEL}   Criação

Verificar a label Extinção
	${LABEL}   Set Variable  xpath=/html/body/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr[9]/td/table/tbody/tr[1]/td[7]
	Element Should Contain  ${LABEL}   Extinção



#VERIFY

Verificar a label Pesquisa
	${LABEL}   Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Pesquisa

Verificar o campo Tabela de Organograma
	${LABEL}      Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[1]
	${CAMPO}      Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[2]/td[3]/table/tbody/tr/td/input

	Element Should Contain             ${LABEL}   Tabela de Organograma
 	Element Attribute Value Should Be  ${CAMPO}   name   tbestruorgan_codiorgaloca

Verificar o campo Descrição do Organograma
	${LABEL}      Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[1]
	${CAMPO}      Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[3]/td[3]/table/tbody/tr/td/input

	Element Should Contain             ${LABEL}   Descrição do Organograma
 	Element Attribute Value Should Be  ${CAMPO}   name   tbestruorgan_nomeorga

Verificar o campo Local
	${LABEL}      Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[1]
	${CAMPO}      Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[4]/td[3]/table/tbody/tr/td/input

	Element Should Contain             ${LABEL}   Local
 	Element Attribute Value Should Be  ${CAMPO}   name   tblocalorgan_locaorga

Verificar o campo Descrição do Local
	${LABEL}      Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[1]
	${CAMPO}      Set Variable  xpath=/html/body/form/table/tbody/tr/td/div/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr[5]/td[3]/table/tbody/tr/td/input

	Element Should Contain             ${LABEL}   Descrição do Local
 	Element Attribute Value Should Be  ${CAMPO}   name   tblocalorgan_nomeloca
