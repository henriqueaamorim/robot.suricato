*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Entrada | Material | Material por Pessoa

# SCREEN
Acessar Tela Cadastro de Materiais por Pessoa
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  ctrMateriaisPessoa
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${SCREENNAME}  Set Variable    Material por Pessoa
  ${ELEMENT}     Set Variable    xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
  ${SCREENNAME}  Set Variable  Cadastro de Materiais por Pessoa 
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Mudar Frame Aplicação "mnu_iframe"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"





#BUTTON
#resource_btn.

Clicar No Botão Buscar Dados Externos Para Código do Visitante
  ${ELEMENT}  Set Variable  id=cap_idvisi

  Wait Until Element Is Visible    ${ELEMENT}
  Click Element  ${ELEMENT}

  Switch Window  locator=NEW
  Maximize Browser Window

#FIELD
Selecionar uma opção no campo Tipo "${TIPO}"
  Select From List By Label  xpath=//*[@name="slctipo"]  ${TIPO}

Preencher o campo Código do Colaborador "${COD}"
  Input Text  xpath=//*[@name="idcolab"][@type="text"]  ${COD}
  #Necessário clicar fora para validar a inserção
  Click Element  xpath=//*[@id="id_label_idcolab"]

Preencher o campo Código do Visitante "${COD}"
  Input Text  xpath=//*[@name="idvisi"][@type="text"]  ${COD}
  #Necessário clicar fora para validar a inserção
  Click Element  xpath=//*[@id="id_label_slctipo"]


#VERIFY

Verificar o campo Tipo *
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
  ${LABEL}      Set Variable  xpath=//span[contains(text(),'Tipo')]
  ${CAMPO}  	  Set Variable  xpath=//span[@class='select2-selection select2-selection--single css_slctipo_obj']
  Element Attribute Value Should Be  ${CAMPO}   class   select2-selection select2-selection--single css_slctipo_obj
  Element Should Contain  ${LABEL}   Tipo
  ELSE
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr/td[1]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[1]/tbody/tr/td/div/table/tbody/tr/td[2]/table/tbody/tr/td[1]/span[2]/span/select
  Element Attribute Value Should Be  ${CAMPO}   name   slctipo
  Element Should Contain  ${LABEL}   Tipo *
  END
	


Verificar a label * Campos obrigatórios
  ${LABEL}      Set Variable  xpath=//span[contains(text(),'* Campos obrigatórios')]
  Element Should Contain  ${LABEL}   * Campos obrigatórios
 	

Verificar a label Visitante
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
	Element Should Contain  ${LABEL}   Visitante

Verificar o campo Código do Colaborador
	${LABEL}      Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}  	  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/input

	Element Should Contain  ${LABEL}   Código do Colaborador
 	Element Attribute Value Should Be  ${CAMPO}   name   idcolab

Verificar a label Empresa
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	Element Should Contain  ${LABEL}   Empresa

Verificar a label Tipo do Colaborador
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	Element Should Contain  ${LABEL}   Tipo do Colaborador

Verificar a label Matrícula
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[5]/td[1]
	Element Should Contain  ${LABEL}   Matrícula

Verificar a label Nome do Colaborador
	${LABEL}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table[2]/tbody/tr/td/div/table/tbody/tr[6]/td[1]
	Element Should Contain  ${LABEL}   Nome do Colaborador
