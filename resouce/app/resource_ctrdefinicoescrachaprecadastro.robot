*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Configurações | Crachá

# SCREEN
Acessar Tela Definições do Crachá - Pré Cadastro
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Definições do Crachá - Pré Cadastro
  ${APPNAME}  Set Variable  ctrdefinicoescrachaprecadastro
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "nmsc_iframe_ctrdefinicoescrachaprecadastro_2"

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"





#BUTTON
#resource_btn.



#VERIFY
Verificar o campo Tipo do Crachá *
  ${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[1]
  ${CHECKBOX1}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/div/table/tbody/tr[1]/td
  ${CHECKBOX2}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/div/table/tbody/tr[2]/td
  ${CHECKBOX3}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/div/table/tbody/tr[3]/td
  ${CHECKBOX4}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/div/table/tbody/tr[4]/td
  ${CHECKBOX5}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/div/table/tbody/tr[5]/td
  ${CHECKBOX6}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/div/table/tbody/tr[6]/td
  ${CHECKBOX7}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/div/table/tbody/tr[7]/td
  ${CHECKBOX8}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/div/table/tbody/tr[8]/td
  ${CHECKBOX9}   Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/div/table/tbody/tr[9]/td
  ${CHECKBOX10}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[2]/td[2]/table/tbody/tr/td[1]/span[2]/div/table/tbody/tr[10]/td

  Element Should Contain  ${LABEL}  Tipo do Crachá *
  Element Should Contain  ${CHECKBOX1}   1 - Empregado
  Element Should Contain  ${CHECKBOX2}   2 - Terceiro
  Element Should Contain  ${CHECKBOX3}   3 - Parceiro
  Element Should Contain  ${CHECKBOX4}   4 - Visitante
  Element Should Contain  ${CHECKBOX5}   6 - Provisório
  Element Should Contain  ${CHECKBOX6}   7 - Grupo de Visitantes
  Element Should Contain  ${CHECKBOX7}   8 - Veículos
  Element Should Contain  ${CHECKBOX8}   9 - Autorização Entrada Servidor
  Element Should Contain  ${CHECKBOX9}   10 - Crachá Mestre
  Element Should Contain  ${CHECKBOX10}  11 - Candidato

Verificar a label Utilizar o Pré-Cadastro Somente Para:
  ${LABEL}  Set Variable  xpath=/html/body/form[7]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr[1]/td/table/tbody/tr/td
  Element Should Contain  ${LABEL}  Utilizar o Pré-Cadastro Somente Para:


#FIELD
Selecionar a opção "${OPCAO}" no campo Tipo de Crachá
  IF  "${OPCAO}" == "1 - Empregado"
    Click Element  xpath=//*[@name="txtusocra[]"][@value="1"]
  ELSE IF  "${OPCAO}" == "2 - Terceiro"
    Click Element  xpath=//*[@name="txtusocra[]"][@value="2"]
  ELSE IF  "${OPCAO}" == "3 - Parceiro"
    Click Element  xpath=//*[@name="txtusocra[]"][@value="3"]
  ELSE IF  "${OPCAO}" == "4 - Visitante"
    Click Element  xpath=//*[@name="txtusocra[]"][@value="4"]
  ELSE IF  "${OPCAO}" == "6 - Provisório"
    Click Element  xpath=//*[@name="txtusocra[]"][@value="6"]
  ELSE IF  "${OPCAO}" == "7 - Grupo de Visitantes"
    Click Element  xpath=//*[@name="txtusocra[]"][@value="7"]
  ELSE IF  "${OPCAO}" == "8 - Veículos"
    Click Element  xpath=//*[@name="txtusocra[]"][@value="8"]
  ELSE IF  "${OPCAO}" == "9 - Autorização Entrada Servidor"
    Click Element  xpath=//*[@name="txtusocra[]"][@value="9"]
  ELSE IF  "${OPCAO}" == "10 - Crachá Mestre"
    Click Element  xpath=//*[@name="txtusocra[]"][@value="10"]
  ELSE IF  "${OPCAO}" == "11 - Candidato"
    Click Element  xpath=//*[@name="txtusocra[]"][@value="11"]