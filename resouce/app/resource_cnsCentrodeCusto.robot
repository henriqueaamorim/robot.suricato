*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot
Resource    resource_cnsAcessosDosColaboradores.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Estrutura | Empresa | Centro de Custo


# SCREEN
Acessar Tela Consulta de Centro de Custo
  ${OBJ}         Set Variable  SCN
  ${APPNAME}  Set Variable  cnsCentrodeCusto
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${SCREENNAME}  Set Variable   Centro de Custo
    ${ELEMENT}  Set Variable      xpath=//td[contains(text(),'${SCREENNAME}')]
  ELSE
    ${SCREENNAME}  Set Variable   Consulta de Centro de Custo
    ${ELEMENT}  Set Variable    xpath=
  END
  
  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

Acessar Tela Consulta de Centro de Custo (Filtro)
  ${OBJ}         Set Variable   SCN
  ${APPNAME}     Set Variable   cnsCentrodeCusto
  IF	"${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247"
  ${SCREENNAME}  Set Variable   Centro de Custo (Filtro)
  ${ELEMENT}     Set Variable   xpath=//td[contains(text(),' ${SCREENNAME} ')]
  ELSE
  ${SCREENNAME}  Set Variable  
  ${ELEMENT}     Set Variable   xpath=  
  END

  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    Sleep  2s
    Mudar Frame Aplicação "TB_iframeContent"
  END

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"
  



#BUTTON
#resource_btn.

#VERIFY

Verificar a label Chave Externa
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Chave Externa')]
	Element Should Contain  ${LABEL}   Chave Externa

Verificar a label Código
	${LABEL}   Set Variable  xpath=(//div[contains(text(),'Código')])[1]
	Element Should Contain  ${LABEL}   Código

Verificar a label Código Importação
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Código Importação')]
	Element Should Contain  ${LABEL}   Código Importação

Verificar a label Empresa
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Empresa')]
	Element Should Contain  ${LABEL}    Empresa

Verificar a label Descrição
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Descrição')]
	Element Should Contain  ${LABEL}    Descrição

Verificar a label Data da Criação
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Data da Criação')]
	Element Should Contain  ${LABEL}    Data da Criação

Verificar a label Data de Extinção
	${LABEL}   Set Variable  xpath=//div[contains(text(),'Data de Extinção')]
	Element Should Contain  ${LABEL}    Data de Extinção


#VERIFY

Verificar o campo Empresa
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Empresa')]
	${CAMPO}      Set Variable  xpath=//span[@class='select2-selection select2-selection--single']
	Element Should Contain             ${LABEL}   Empresa
  Element Attribute Value Should Be  ${CAMPO}   class    select2-selection select2-selection--single

Verificar o campo Descrição
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Descrição')]
	${CAMPO}      Set Variable  xpath=//input[@name='nomecentcust']
	Element Should Contain             ${LABEL}   Descrição
  Element Attribute Value Should Be  ${CAMPO}   name   nomecentcust

Verificar o campo Data da Criação	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Data da Criação')]
	${CAMPO1}      Set Variable  xpath=//input[@name='datacria_dia']
  ${CAMPO2}      Set Variable  xpath=//input[@name='datacria_mes']
  ${CAMPO3}      Set Variable  xpath=//input[@name='datacria_ano']
  ${CAMPO4}      Set Variable  xpath=//input[@name='datacria_input_2_dia']
  ${CAMPO5}      Set Variable  xpath=//input[@name='datacria_input_2_mes']
  ${CAMPO6}      Set Variable  xpath=//input[@name='datacria_input_2_ano']
	Element Should Contain             ${LABEL}   Data da Criação	
  Element Attribute Value Should Be  ${CAMPO1}   name  datacria_dia
  Element Attribute Value Should Be  ${CAMPO2}   name  datacria_mes
  Element Attribute Value Should Be  ${CAMPO3}   name  datacria_ano
  Element Attribute Value Should Be  ${CAMPO4}   name  datacria_input_2_dia
  Element Attribute Value Should Be  ${CAMPO5}   name  datacria_input_2_mes
  Element Attribute Value Should Be  ${CAMPO6}   name  datacria_input_2_ano
 
Verificar o campo Chave Externa	
	${LABEL}      Set Variable  xpath=//td[contains(text(),'Chave Externa')]
	${CAMPO}      Set Variable  xpath=//input[@name='external_key']
	Element Should Contain             ${LABEL}   Chave Externa
  Element Attribute Value Should Be  ${CAMPO}   name  external_key


#FIELD
Selecionar uma opção no campo Empresa "${EMPRESA}"
  Select From List By Label  xpath=//*[@name="codiempr[]"]  ${EMPRESA}

Preencher o campo Descrição "${DESCRICAO}"
  Input Text  xpath=//*[@name="nomecentcust"][@type="text"]   ${DESCRICAO}

Preencher o campo Data da Criação "${DIA}/${MES}/${ANO}"
  Input Text  xpath=//*[@name="datacria_dia"][@type="text"]   ${DIA}
  Input Text  xpath=//*[@name="datacria_mes"][@type="text"]   ${MES}
  Input Text  xpath=//*[@name="datacria_ano"][@type="text"]   ${ANO}

Preencher o campo Chave Externa "${CHAVE}"
  Input Text  xpath=//*[@name="external_key"][@type="text"]   ${CHAVE}