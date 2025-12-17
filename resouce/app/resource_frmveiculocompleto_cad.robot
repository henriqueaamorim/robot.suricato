*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Veículos | Cadastro | Veículo

# SCREEN
Acessar Tela Cadastro Veículos - Atualização
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Cadastro Veículos - Atualização
  ${APPNAME}     Set Variable  frmveiculocompleto_cad
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  Mudar Frame Aplicação "nmsc_iframe_frmveiculocompleto_cad_1"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



Acessar Tela Cadastro Veículos - Inclusão
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Cadastro Veículos - Inclusão
  ${APPNAME}     Set Variable  frmveiculocompleto_cad
  IF  "${SERVER}" == "172.16.14.246" or "${SERVER}" == "172.16.14.247" or "${SERVER}" == "26.120.163.33" or "${SERVER}" == "26.233.65.244"
    ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[1]
  ELSE
    ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
  END
  Sleep  2s
  Mudar Frame Aplicação "mnu_iframe"
  Mudar Frame Aplicação "nmsc_iframe_frmveiculocompleto_cad_1"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"






#BUTTON
#resource_btn.

#FIELD
Preencher o campo Placa "${PLACA}"
  ${ELEMENT}  Set Variable  name=placveic
  
  IF  '${PLACA}' == 'API'
    ${PLACA}  Run Keyword  Placa
  END
  
  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${PLACA}

Selecionar uma opção no campo UF Placa "${UF}"
  ${ELEMENT}  Set Variable  name=estaplac
  
  IF  '${UF}' == 'API'
    ${UF}  Run Keyword  UF Placa
  END
  
  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Select From List By Label      ${ELEMENT}  ${UF}

Selecionar uma opção no campo Marca "${MARCA}"
  ${ELEMENT}  Set Variable  name=idmarcveic
  
  IF  '${MARCA}' == 'API'
    ${MARCA}  Run Keyword  Marca
  END
  
  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Select From List By Label      ${ELEMENT}  ${MARCA}

Selecionar uma opção no campo Modelo "${MODELO}"
  ${ELEMENT}  Set Variable  name=idmodeveic
  
  IF  '${MODELO}' == 'API'
    ${MODELO}  Run Keyword  Modelo
  END
  
  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Select From List By Label      ${ELEMENT}  ${MODELO}

Selecionar uma opção no campo Cor "${COR}"
  ${ELEMENT}  Set Variable  name=corveic
  
  IF  '${COR}' == 'API'
    ${COR}  Run Keyword  Cor
  END
  
  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Select From List By Label      ${ELEMENT}  ${COR}

Preencher o campo Ano Fabricação "${ANO}"
  ${ELEMENT}  Set Variable  name=anofabrveic
  
  IF  '${ANO}' == 'API'
    ${ANO}  Run Keyword  Ano Fabricacao
  END
  
  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${ANO}

Preencher o campo Ano Modelo "${ANO}"
  ${ELEMENT}  Set Variable  name=anomarc
  
  IF  '${ANO}' == 'API'
    ${ANO}  Run Keyword  Ano Modelo
  END
  
  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${ANO}

Selecionar uma opção no campo Tipo Veículo "${TIPO}"
  ${ELEMENT}  Set Variable  name=tipoveicdena
  
  IF  '${TIPO}' == 'API'
    ${TIPO}  Run Keyword  Tipo Veiculo
  END
  
  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Select From List By Label      ${ELEMENT}  ${TIPO}

Preencher o campo Peso "${PESO}"
  ${ELEMENT}  Set Variable  name=pesoveic
  
  IF  '${PESO}' == 'API'
    ${PESO}  Run Keyword  Peso
  END
  
  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${PESO}

Preencher o campo Capacidade Carga KG "${CAPACIDADE}"
  ${ELEMENT}  Set Variable  name=capacargveic
  
  IF  '${CAPACIDADE}' == 'API'
    ${CAPACIDADE}  Run Keyword  Capacidade Carga
  END
  
  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${CAPACIDADE}

Preencher o campo Venc. Licença / Seguro "${VENC}"
  ${ELEMENT}  Set Variable  name=venclicesegu
  
  IF  '${VENC}' == 'API'
    ${VENC}  Run Keyword  Vencimento Licenca Seguro
  END
  
  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${VENC}

Preencher o campo Mês Vencimento Seguro "${MÊS}"
  ${ELEMENT}  Set Variable  name=vencsegu
  
  IF  '${MÊS}' == 'API'
    ${MÊS}  Run Keyword  Mes Vencimento Seguro
  END
  
  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${MÊS}

Preencher o campo Ativo Fixo Imobilizado "${ATIVO}"
  Input Text   name=numeativimob   ${ATIVO}

Preencher o campo Número Chassi "${NÚMERO}"
  ${ELEMENT}  Set Variable  name=numechas
  
  IF  '${NÚMERO}' == 'API'
    ${NÚMERO}  Run Keyword  Numero Chassi
  END
  
  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${NÚMERO}

Preencher o campo Número do Motor "${NÚMERO}"
  ${ELEMENT}  Set Variable  name=numemoto
  
  IF  '${NÚMERO}' == 'API'
    ${NÚMERO}  Run Keyword  Numero Motor
  END
  
  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${NÚMERO}

Preencher o campo Código Renavam "${CÓDIGO}"
  ${ELEMENT}  Set Variable  name=codirena
  
  IF  '${CÓDIGO}' == 'API'
    ${CÓDIGO}  Run Keyword  Renavam
  END
  
  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${CÓDIGO}

Preencher o campo Previsão Troca "${PREVISÃO}"
  ${ELEMENT}  Set Variable  name=temptrocveic
  
  IF  '${PREVISÃO}' == 'API'
    ${PREVISÃO}  Run Keyword  Previsao Troca
  END
  
  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${PREVISÃO}

Selecionar uma opção no campo Combustível "${COMBUSTÝVEL}"
  ${ELEMENT}  Set Variable  name=tipocomb
  
  IF  '${COMBUSTÝVEL}' == 'API'
    ${COMBUSTÝVEL}  Run Keyword  Combustivel
  END
  
  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Select From List By Label      ${ELEMENT}  ${COMBUSTÝVEL}

Preencher o campo Observação "${OBSERVAÇÃO}"
  Input Text    name=obseveic  ${OBSERVAÇÃO}

Preencher o campo Hodômetro "${HODÔMETRO}"
  Input Text    name=quilveic    ${HODÔMETRO}

Preencher o campo Qtde Passageiros "${QTDE}"
  ${ELEMENT}  Set Variable  name=quanpermpass
  
  IF  '${QTDE}' == 'API'
    ${QTDE}  Run Keyword  Capacidade Pessoas
  END
  
  Wait Until Element Is Visible  ${ELEMENT}
  Click Element                  ${ELEMENT}
  Clear Element Text             ${ELEMENT}
  Input Text                     ${ELEMENT}  ${QTDE}
  #Necessário clicar em algum elemento que esteja perto do botão de incluir
  Click Element  xpath=/html/body/form[4]/table/tbody/tr[1]/td/table/tbody/tr/td/table/tbody/tr[1]/td[6]



#VERIFY

Verificar o campo Placa
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td[2]/input
	
	Element Should Contain  ${LABEL}   Placa
 	Element Attribute Value Should Be  ${CAMPO}   name   placveic

Verificar o campo UF Placa
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/select
	
	Element Should Contain  ${LABEL}   UF Placa
 	Element Attribute Value Should Be  ${CAMPO}   name   estaplac

Verificar o campo Marca *
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[3]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[3]/td[2]/select
	
	Element Should Contain  ${LABEL}   Marca *
 	Element Attribute Value Should Be  ${CAMPO}   name   idmarcveic

Verificar o campo Modelo *
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[4]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[4]/td[2]/select
	
	Element Should Contain  ${LABEL}   Modelo *
 	Element Attribute Value Should Be  ${CAMPO}   name   idmodeveic

Verificar o campo Cor *
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[5]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[5]/td[2]/select
	
	Element Should Contain  ${LABEL}   Cor *
 	Element Attribute Value Should Be  ${CAMPO}   name   corveic

Verificar o campo Ano Fabricação
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[6]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[6]/td[2]/input
	
	Element Should Contain  ${LABEL}   Ano Fabricação
 	Element Attribute Value Should Be  ${CAMPO}   name   anofabrveic

Verificar o campo Ano Modelo
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[7]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[7]/td[2]/input
	
	Element Should Contain  ${LABEL}   Ano Modelo
 	Element Attribute Value Should Be  ${CAMPO}   name   anomarc

Verificar o campo Tipo Veículo *
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[8]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[8]/td[2]/select
	
	Element Should Contain  ${LABEL}   Tipo Veículo *
 	Element Attribute Value Should Be  ${CAMPO}   name   tipoveicdena

Verificar o campo Peso
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[9]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[9]/td[2]/input
	
	Element Should Contain  ${LABEL}   Peso
 	Element Attribute Value Should Be  ${CAMPO}   name   pesoveic

Verificar o campo Capacidade Carga KG
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[10]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[10]/td[2]/input
	
	Element Should Contain  ${LABEL}   Capacidade Carga KG
 	Element Attribute Value Should Be  ${CAMPO}   name   capacargveic

Verificar o campo Venc. Licença / Seguro
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[11]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[11]/td[2]/input
	
	Element Should Contain  ${LABEL}   Venc. Licença / Seguro
 	Element Attribute Value Should Be  ${CAMPO}   name   venclicesegu

Verificar o campo Mês Vencimento Seguro
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[12]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[12]/td[2]/input
	
	Element Should Contain  ${LABEL}   Mês Vencimento Seguro
 	Element Attribute Value Should Be  ${CAMPO}   name   vencsegu

Verificar o campo Ativo Fixo Imobilizado
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[13]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[13]/td[2]/input
	
	Element Should Contain  ${LABEL}   Ativo Fixo Imobilizado
 	Element Attribute Value Should Be  ${CAMPO}   name   numeativimob

Verificar o campo Número Chassi
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[14]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[14]/td[2]/input
	
	Element Should Contain  ${LABEL}   Número Chassi
 	Element Attribute Value Should Be  ${CAMPO}   name   numechas

Verificar o campo Número Motor
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[15]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[15]/td[2]/input
	
	Element Should Contain  ${LABEL}   Número Motor
 	Element Attribute Value Should Be  ${CAMPO}   name   numemoto

Verificar o campo Código Renavam
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[16]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[16]/td[2]/input
	
	Element Should Contain  ${LABEL}   Código Renavam
 	Element Attribute Value Should Be  ${CAMPO}   name   codirena

Verificar o campo Previsão Troca
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[17]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[17]/td[2]/input
	
	Element Should Contain  ${LABEL}   Previsão Troca
 	Element Attribute Value Should Be  ${CAMPO}   name   temptrocveic

Verificar o campo Combustível
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[18]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[18]/td[2]/select
	
	Element Should Contain  ${LABEL}   Combustível
 	Element Attribute Value Should Be  ${CAMPO}   name   tipocomb

Verificar o campo Observação
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[19]/td[1]
	${CAMPO}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[19]/td[2]/textarea
	
	Element Should Contain  ${LABEL}   Observação
 	Element Attribute Value Should Be  ${CAMPO}   name   obseveic

Verificar a label Hodômetro
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[20]/td[1]
	Element Should Contain  ${LABEL}   Hodômetro

Verificar a label Qtde Passageiros
	${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td/div/table/tbody/tr[21]/td[1]
	Element Should Contain  ${LABEL}   Qtde Passageiros
