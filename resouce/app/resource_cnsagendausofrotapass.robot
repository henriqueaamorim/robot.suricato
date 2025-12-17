*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Veículos | Frota | Utilização Veículos | Agendamentos de Veículo - Frota

# SCREEN
Acessar Tela Agendamento do Uso da Frota - Passageiros
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Agendamento do Uso da Frota - Passageiros
  ${APPNAME}     Set Variable  cnsagendausofrotapass
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "nmsc_iframe_cnsagendausofrotapass_2"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"





#BUTTON
#resource_btn.



#FIELD
Selecionar uma opção no campo Tipo do Passageiro "${TIPO_DO_PASSAGEIRO}"
	Select From List By Label  xpath=//*[@name="tipopassveic"]  ${TIPO_DO_PASSAGEIRO}

Preencher o campo Código do Colaborador "${CÓDIGO_DO_COLABORADOR}"
	Input Text  xpath=//*[@name="idvisi"][@type="text"]  ${CÓDIGO_DO_COLABORADOR}

Preencher o campo Centro de Custo "${CENTRO_DE_CUSTO}"
	Input Text  xpath=//*[@name="idcentcust"][@type="text"]  ${CENTRO_DE_CUSTO}

