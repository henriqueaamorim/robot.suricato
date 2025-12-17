*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Estrutura | Empresa | Escala | Horário de Escala


# SCREEN
Acessar Tela Atualização de Faixa Horária
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Atualização de Faixa Horária
  ${APPNAME}     Set Variable  ctratualizaescala
  ${ELEMENT}     Set Variable  xpath=(//*[contains(text(),'${SCREENNAME}')])[2]
   

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"





#BUTTON
#resource_btn.


#FIELD
Clicar na opção "${OPCAO}" no campo Deseja atualizar as faixas horárias agora?
  ${HANDLES}     Get Window Handles
  Switch Window  ${HANDLES}[1]
  Maximize Browser Window

  IF   "${OPCAO}" == "Sim"
    Click Element  xpath=//*[@id="idAjaxRadio_phpconfirma"]/table/tbody/tr/td[1]/input
  ELSE
    Click Element  xpath=//*[@id="idAjaxRadio_phpconfirma"]/table/tbody/tr/td[2]/input
  END

Voltar para Janela Normal
  ${HANDLES}     Get Window Handles
  Switch Window  ${HANDLES}[0]