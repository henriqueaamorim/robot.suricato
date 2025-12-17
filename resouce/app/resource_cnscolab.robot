*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Identificação | Colaborador | Histórico | Crachá


# SCREEN

Acessar Tela: Colaboradores (Consulta e Filtro)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Colaborador
  ${APPNAME}     Set Variable  cnscolab
  ${ELEMENT}     Set Variable  xpath=(//td[contains(text(),'Colaborador')])[1]

  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"


#BUTTON
#resource_btn.




#FIELD
Preencher o campo Pessoa "${PESSOA}"
	Input Text  xpath=//*[@name="idpessoa"][@type="text"]  ${PESSOA}

Preencher o campo: Empresa "${EMPRESA}"
	Click Element  xpath=(//span[@class="select2-selection select2-selection--single"])[1]   
  Sleep  2s
  Input Text     xpath=//input[@class='select2-search__field']   ${EMPRESA}  


Selecionar uma opção no campo Tipo do Colaborador "${TIPOCOLAB}"
    Click Element   xpath=(//span[@class='select2-selection select2-selection--single'])[2]
	Sleep  2s
	Input Text      xpath=//input[@class="select2-search__field"]  ${TIPOCOLAB}
	

Preencher o campo Matrícula "${MATRÍCULA}"
    Sleep  2s
	Input Text  xpath=//*[@name="codimatr"][@type="text"]  ${MATRÍCULA}  


Preencher o campo Nome "${NOME}"
  Sleep  2s
	Input Text  xpath=//*[@name="nomepess"][@type="text"]  ${NOME}

Preencher o campo Crachá "${CRACHÁ}"
	Input Text  xpath=//*[@name="icard"][@type="text"]  ${CRACHÁ}

Preencher o campo CPF "${CPF}"
	Input Text  xpath=//*[@name="numecpf"][@type="text"]  ${CPF}

Preencher o campo Identidade "${IDENTIDADE}"
	Input Text  xpath=//*[@name="numecariden"][@type="text"]  ${IDENTIDADE}

Preencher o campo OAB "${OAB}"
	Input Text  xpath=//*[@name="numeoab"][@type="text"]  ${OAB}

Preencher o campo Centro de Custo "${CENTRO_DE_CUSTO}"
	Input Text  xpath=//*[@name="nomecentcust"][@type="text"]  ${CENTRO_DE_CUSTO}

Preencher o campo Ramal "${RAMAL}"
	Input Text  xpath=//*[@name="numeramal"][@type="text"]  ${RAMAL}

Preencher o campo Chave Externa "${CHAVE_EXTERNA}"
	Input Text  xpath=//*[@name="external_key"][@type="text"]  ${CHAVE_EXTERNA}

