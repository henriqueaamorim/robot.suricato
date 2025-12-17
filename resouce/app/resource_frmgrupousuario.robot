*** Settings ***
Library         SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***


*** Keywords ***
# MENU
resource_mnu.Clicar No Menu Configurações | Usuários | Grupo de Usuário

# SCREEN
Acessar Tela Cadastro de Grupo de Usuários (Atualização)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Cadastro de Grupo de Usuários (Atualização)
  ${APPNAME}  Set Variable  frmgrupousuario
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Mudar Frame Aplicação "mnu_iframe"
  

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  

Acessar Tela Cadastro de Grupo de Usuários (Inclusão)
  ${OBJ}         Set Variable  SCN
  ${SCREENNAME}  Set Variable  Cadastro de Grupo de Usuários (Inclusão)
  ${APPNAME}  Set Variable  frmgrupousuario
  ${ELEMENT}  Set Variable    xpath=(//*[contains(text(),'${SCREENNAME}')])[2]

  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"

  



#BUTTON
#resource_btn.

#FIELD
Preencher o campo Grupo "${GRUPO}"
  Input Text  xpath=//*[@name="nomegrup"][@type="text"]  ${GRUPO}

Selecionar os usuários desejados para o Grupo
# Usuário 1
  Click Element    xpath=//*[@id="hidden_bloco_0"]/tbody/tr[2]/td[1]/table/tbody/tr/td[1]/select/option[3]
  Click Element    xpath=//*[@id="hidden_bloco_0"]/tbody/tr[2]/td[1]/table/tbody/tr/td[2]/input[2]
# Usuário 2
  Click Element    xpath=//*[@id="hidden_bloco_0"]/tbody/tr[2]/td[1]/table/tbody/tr/td[1]/select/option[4]
  Click Element    xpath=//*[@id="hidden_bloco_0"]/tbody/tr[2]/td[1]/table/tbody/tr/td[2]/input[2]
# Usuário 3
  Click Element    xpath=//*[@id="hidden_bloco_0"]/tbody/tr[2]/td[1]/table/tbody/tr/td[1]/select/option[7]
  Click Element    xpath=//*[@id="hidden_bloco_0"]/tbody/tr[2]/td[1]/table/tbody/tr/td[2]/input[2]



#VERIFY
Verificar o campo Grupo 
  ${LABEL}   Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td[1]/div/table/tbody/tr[1]/td[1]/span
  ${CAMPO1}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td[1]/div/table/tbody/tr[1]/td[1]/input
  ${CAMPO2}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td[1]/div/table/tbody/tr[2]/td[1]/table/tbody/tr/td[1]/select
  ${CAMPO3}  Set Variable  xpath=/html/body/form[4]/table/tbody/tr[3]/td/table/tbody/tr/td[1]/div/table/tbody/tr[2]/td[1]/table/tbody/tr/td[3]/select

  Element Should Contain  ${LABEL}  Grupo
  Element Attribute Value Should Be  ${CAMPO1}  name  nomegrup
  Element Attribute Value Should Be  ${CAMPO2}  name  updusuario_orig
  Element Attribute Value Should Be  ${CAMPO3}  name  updusuario_dest

Verificar o campo Descrição
  ${FRAME_CAMPO}  Set Variable   xpath=//*[@id="hidden_bloco_1"]/tbody/tr/td/iframe
  Wait Until Element Is Visible  ${FRAME_CAMPO}
  Select Frame  ${FRAME_CAMPO}

  ${LABEL}    Set Variable  xpath=//*[@id="hidden_bloco_0"]/tbody/tr/td/div[2]/div/table/thead/tr/th[1]
  Wait Until Element Is Visible  ${LABEL}
  Element Should Contain  ${LABEL}  Descrição

  ${OPCAO1}    Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[1]/td[1]
  ${OPCAO2}    Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[2]/td[1]
  ${OPCAO3}    Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[3]/td[1]
  ${OPCAO4}    Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[4]/td[1]
  ${OPCAO5}    Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[5]/td[1]
  ${OPCAO6}    Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[6]/td[1]
  ${OPCAO7}    Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[7]/td[1]
  ${OPCAO8}    Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[8]/td[1]
  ${OPCAO9}    Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[9]/td[1]
  ${OPCAO10}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[10]/td[1]
  ${OPCAO11}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[11]/td[1]
  ${OPCAO12}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[12]/td[1]
  ${OPCAO13}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[13]/td[1]
  ${OPCAO14}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[14]/td[1]
  ${OPCAO15}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[15]/td[1]
  ${OPCAO16}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[16]/td[1]
  ${OPCAO17}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[17]/td[1]
  ${OPCAO18}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[18]/td[1]
  ${OPCAO19}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[19]/td[1]
  ${OPCAO20}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[20]/td[1]
  ${OPCAO21}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[21]/td[1]
  ${OPCAO22}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[22]/td[1]
  ${OPCAO23}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[23]/td[1]
  ${OPCAO24}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[24]/td[1]
  ${OPCAO25}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[25]/td[1]
  ${OPCAO26}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[26]/td[1]
  ${OPCAO27}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[27]/td[1]
  ${OPCAO28}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[28]/td[1]
  ${OPCAO29}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[29]/td[1]
  ${OPCAO30}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[30]/td[1]
  ${OPCAO31}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[31]/td[1]
  ${OPCAO32}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[32]/td[1]
  ${OPCAO33}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[33]/td[1]
  ${OPCAO34}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[34]/td[1]
  ${OPCAO35}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[35]/td[1]
  ${OPCAO36}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[36]/td[1]
  ${OPCAO37}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[37]/td[1]
  ${OPCAO38}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[38]/td[1]
  ${OPCAO38}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[38]/td[1]
  ${OPCAO39}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[39]/td[1]
  ${OPCAO40}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[40]/td[1]
  ${OPCAO41}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[41]/td[1]
  ${OPCAO42}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[42]/td[1]
  ${OPCAO43}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[43]/td[1]
  ${OPCAO44}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[44]/td[1]
  ${OPCAO45}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[45]/td[1]
  ${OPCAO46}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[46]/td[1]
  ${OPCAO47}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[47]/td[1]
  ${OPCAO48}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[48]/td[1]
  ${OPCAO49}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[49]/td[1]
  ${OPCAO50}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[50]/td[1]
  ${OPCAO51}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[51]/td[1]
  ${OPCAO52}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[52]/td[1]
  ${OPCAO53}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[53]/td[1]
  ${OPCAO54}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[54]/td[1]
  ${OPCAO55}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[55]/td[1]
  ${OPCAO56}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[56]/td[1]
  ${OPCAO57}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[57]/td[1]
  ${OPCAO58}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[58]/td[1]
  ${OPCAO59}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[59]/td[1]
  ${OPCAO60}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[60]/td[1]
  ${OPCAO61}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[61]/td[1]
  ${OPCAO62}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[62]/td[1]
  ${OPCAO63}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[63]/td[1]
  ${OPCAO64}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[64]/td[1]
  ${OPCAO65}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[65]/td[1]
  ${OPCAO66}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[66]/td[1]
  ${OPCAO67}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[67]/td[1]
  ${OPCAO68}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[68]/td[1]
  ${OPCAO69}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[69]/td[1]
  ${OPCAO70}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[70]/td[1]
  ${OPCAO71}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[71]/td[1]
  ${OPCAO72}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[72]/td[1]
  ${OPCAO73}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[73]/td[1]
  ${OPCAO74}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[74]/td[1]
  ${OPCAO75}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[75]/td[1]
  ${OPCAO76}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[76]/td[1]
  ${OPCAO77}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[77]/td[1]
  ${OPCAO78}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[78]/td[1]
  ${OPCAO79}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[79]/td[1]
  ${OPCAO80}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[80]/td[1]
  ${OPCAO81}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[81]/td[1]
  ${OPCAO82}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[82]/td[1]
  ${OPCAO83}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[83]/td[1]
  ${OPCAO84}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[84]/td[1]
  ${OPCAO85}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[85]/td[1]
  ${OPCAO86}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[86]/td[1]
  ${OPCAO87}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[87]/td[1]
  ${OPCAO88}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[88]/td[1]
  ${OPCAO89}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[89]/td[1]
  ${OPCAO90}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[90]/td[1]
  ${OPCAO91}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[91]/td[1]
  ${OPCAO92}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[92]/td[1]
  ${OPCAO93}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[93]/td[1]
  ${OPCAO94}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[94]/td[1]
  ${OPCAO95}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[95]/td[1]
  ${OPCAO96}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[96]/td[1]
  ${OPCAO97}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[97]/td[1]
  ${OPCAO98}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[98]/td[1]
  ${OPCAO99}   Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[99]/td[1]
  ${OPCAO100}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[100]/td[1]
  ${OPCAO101}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[101]/td[1]
  ${OPCAO102}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[102]/td[1]
  ${OPCAO103}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[103]/td[1]
  ${OPCAO104}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[104]/td[1]
  ${OPCAO105}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[105]/td[1]
  ${OPCAO106}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[106]/td[1]
  ${OPCAO107}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[107]/td[1]
  ${OPCAO108}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[108]/td[1]
  ${OPCAO109}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[109]/td[1]
  ${OPCAO110}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[110]/td[1]
  ${OPCAO111}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[111]/td[1]
  ${OPCAO112}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[112]/td[1]
  ${OPCAO113}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[113]/td[1]
  ${OPCAO114}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[114]/td[1]
  ${OPCAO115}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[115]/td[1]
  ${OPCAO116}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[116]/td[1]
  ${OPCAO117}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[117]/td[1]
  ${OPCAO118}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[118]/td[1]
  ${OPCAO119}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[119]/td[1]
  ${OPCAO120}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[120]/td[1]
  ${OPCAO121}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[121]/td[1]
  ${OPCAO122}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[122]/td[1]
  ${OPCAO123}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[123]/td[1]
  ${OPCAO124}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[124]/td[1]
  ${OPCAO125}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[125]/td[1]
  ${OPCAO126}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[126]/td[1]
  ${OPCAO127}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[127]/td[1]
  ${OPCAO128}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[128]/td[1]
  ${OPCAO129}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[129]/td[1]
  ${OPCAO130}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[130]/td[1]
  ${OPCAO131}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[131]/td[1]
  ${OPCAO132}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[132]/td[1]
  ${OPCAO133}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[133]/td[1]
  ${OPCAO134}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[134]/td[1]
  ${OPCAO135}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[135]/td[1]
  ${OPCAO136}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[136]/td[1]
  ${OPCAO137}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[137]/td[1]
  ${OPCAO138}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[138]/td[1]
  ${OPCAO139}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[139]/td[1]
  ${OPCAO140}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[140]/td[1]
  ${OPCAO141}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[141]/td[1]
  ${OPCAO142}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[142]/td[1]
  ${OPCAO143}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[143]/td[1]
  ${OPCAO144}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[144]/td[1]
  ${OPCAO145}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[145]/td[1]
  ${OPCAO146}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[146]/td[1]
  ${OPCAO147}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[147]/td[1]
  ${OPCAO148}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[148]/td[1]
  ${OPCAO149}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[149]/td[1]
  ${OPCAO150}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[150]/td[1]
  ${OPCAO151}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[151]/td[1]
  ${OPCAO152}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[152]/td[1]
  ${OPCAO153}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[153]/td[1]
  ${OPCAO154}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[154]/td[1]
  ${OPCAO155}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[155]/td[1]
  ${OPCAO156}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[156]/td[1]
  ${OPCAO157}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[157]/td[1]
  ${OPCAO158}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[158]/td[1]
  ${OPCAO159}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[159]/td[1]
  ${OPCAO160}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[160]/td[1]
  ${OPCAO161}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[161]/td[1]
  ${OPCAO162}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[162]/td[1]
  ${OPCAO163}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[163]/td[1]
  ${OPCAO164}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[164]/td[1]
  ${OPCAO165}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[165]/td[1]
  ${OPCAO166}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[166]/td[1]
  ${OPCAO167}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[167]/td[1]
  ${OPCAO168}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[168]/td[1]
  ${OPCAO169}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[169]/td[1]
  ${OPCAO170}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[170]/td[1]
  ${OPCAO171}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[171]/td[1]
  ${OPCAO172}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[172]/td[1]
  ${OPCAO173}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[173]/td[1]
  ${OPCAO174}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[174]/td[1]
  ${OPCAO175}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[175]/td[1]
  ${OPCAO176}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[176]/td[1]
  ${OPCAO177}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[177]/td[1]
  ${OPCAO178}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[178]/td[1]
  ${OPCAO179}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[179]/td[1]
  ${OPCAO180}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[180]/td[1]
  ${OPCAO181}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[181]/td[1]
  ${OPCAO182}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[182]/td[1]
  ${OPCAO183}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[183]/td[1]
  ${OPCAO184}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[184]/td[1]
  ${OPCAO185}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[185]/td[1]
  ${OPCAO186}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[186]/td[1]
  ${OPCAO187}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[187]/td[1]
  ${OPCAO188}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[188]/td[1]
  ${OPCAO189}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[189]/td[1]
  ${OPCAO190}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[190]/td[1]
  ${OPCAO191}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[191]/td[1]
  ${OPCAO192}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[192]/td[1]
  ${OPCAO193}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[193]/td[1]
  ${OPCAO194}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[194]/td[1]
  ${OPCAO195}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[195]/td[1]
  ${OPCAO196}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[196]/td[1]
  ${OPCAO197}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[197]/td[1]
  ${OPCAO198}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[198]/td[1]
  ${OPCAO199}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[199]/td[1]
  ${OPCAO200}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[200]/td[1]
  ${OPCAO201}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[201]/td[1]
  ${OPCAO202}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[202]/td[1]
  ${OPCAO203}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[203]/td[1]
  ${OPCAO204}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[204]/td[1]
  ${OPCAO205}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[205]/td[1]
  ${OPCAO206}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[206]/td[1]
  ${OPCAO207}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[207]/td[1]
  ${OPCAO208}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[208]/td[1]
  ${OPCAO209}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[209]/td[1]
  ${OPCAO210}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[210]/td[1]
  ${OPCAO211}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[211]/td[1]
  ${OPCAO212}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[212]/td[1]
  ${OPCAO213}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[213]/td[1]
  ${OPCAO214}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[214]/td[1]
  ${OPCAO215}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[215]/td[1]
  ${OPCAO216}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[216]/td[1]
  ${OPCAO217}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[217]/td[1]
  ${OPCAO218}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[218]/td[1]
  ${OPCAO219}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[219]/td[1]
  ${OPCAO220}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[220]/td[1]
  ${OPCAO221}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[221]/td[1]
  ${OPCAO222}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[222]/td[1]
  ${OPCAO223}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[223]/td[1]
  ${OPCAO224}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[224]/td[1]
  ${OPCAO225}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[225]/td[1]
  ${OPCAO226}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[226]/td[1]
  ${OPCAO227}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[227]/td[1]
  ${OPCAO228}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[228]/td[1]
  ${OPCAO229}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[229]/td[1]
  ${OPCAO230}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[230]/td[1]
  ${OPCAO231}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[231]/td[1]
  ${OPCAO232}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[232]/td[1]
  ${OPCAO233}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[233]/td[1]
  ${OPCAO234}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[234]/td[1]
  ${OPCAO235}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[235]/td[1]
  ${OPCAO236}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[236]/td[1]
  ${OPCAO237}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[237]/td[1]
  ${OPCAO238}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[238]/td[1]
  ${OPCAO239}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[239]/td[1]
  ${OPCAO240}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[240]/td[1]
  ${OPCAO241}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[241]/td[1]
  ${OPCAO242}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[242]/td[1]
  ${OPCAO243}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[243]/td[1]
  ${OPCAO244}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[244]/td[1]
  ${OPCAO245}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[245]/td[1]
  ${OPCAO246}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[246]/td[1]
  ${OPCAO247}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[247]/td[1]
  ${OPCAO248}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[248]/td[1]
  ${OPCAO249}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[249]/td[1]
  ${OPCAO250}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[250]/td[1]
  ${OPCAO251}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[251]/td[1]
  ${OPCAO252}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[252]/td[1]
  ${OPCAO253}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[253]/td[1]
  ${OPCAO254}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[254]/td[1]
  ${OPCAO255}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[255]/td[1]
  ${OPCAO256}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[256]/td[1]
  ${OPCAO257}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[257]/td[1]
  ${OPCAO258}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[258]/td[1]
  ${OPCAO259}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[259]/td[1]
  ${OPCAO260}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[260]/td[1]
  ${OPCAO261}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[261]/td[1]
  ${OPCAO262}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[262]/td[1]
  ${OPCAO263}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[263]/td[1]
  ${OPCAO264}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[264]/td[1]
  ${OPCAO265}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[265]/td[1]
  ${OPCAO266}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[266]/td[1]
  ${OPCAO267}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[267]/td[1]
  ${OPCAO268}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[268]/td[1]
  ${OPCAO269}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[269]/td[1]
  ${OPCAO270}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[270]/td[1]
  ${OPCAO271}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[271]/td[1]
  ${OPCAO272}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[272]/td[1]
  ${OPCAO273}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[273]/td[1]
  ${OPCAO274}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[274]/td[1]
  ${OPCAO275}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[275]/td[1]
  ${OPCAO276}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[276]/td[1]
  ${OPCAO277}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[277]/td[1]
  ${OPCAO278}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[278]/td[1]
  ${OPCAO279}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[279]/td[1]
  ${OPCAO280}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[280]/td[1]
  ${OPCAO281}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[281]/td[1]
  ${OPCAO282}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[282]/td[1]
  ${OPCAO283}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[283]/td[1]
  ${OPCAO284}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[284]/td[1]
  ${OPCAO285}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[285]/td[1]
  ${OPCAO286}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[286]/td[1]
  ${OPCAO287}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[287]/td[1]
  ${OPCAO288}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[288]/td[1]
  ${OPCAO289}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[289]/td[1]
  ${OPCAO290}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[290]/td[1]
  ${OPCAO291}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[291]/td[1]
  ${OPCAO292}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[292]/td[1]
  ${OPCAO293}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[293]/td[1]
  ${OPCAO294}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[294]/td[1]
  ${OPCAO295}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[295]/td[1]
  ${OPCAO296}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[296]/td[1]
  ${OPCAO297}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[297]/td[1]
  ${OPCAO298}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[298]/td[1]
  ${OPCAO299}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[299]/td[1]
  ${OPCAO300}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[300]/td[1]
  ${OPCAO301}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[301]/td[1]
  ${OPCAO302}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[302]/td[1]
  ${OPCAO303}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[303]/td[1]
  ${OPCAO304}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[304]/td[1]
  ${OPCAO305}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[305]/td[1]
  ${OPCAO306}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[306]/td[1]
  ${OPCAO307}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[307]/td[1]
  ${OPCAO308}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[308]/td[1]
  ${OPCAO309}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[309]/td[1]
  ${OPCAO310}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[310]/td[1]
  ${OPCAO311}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[311]/td[1]
  ${OPCAO312}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[312]/td[1]
  ${OPCAO313}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[313]/td[1]
  ${OPCAO314}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[314]/td[1]
  ${OPCAO315}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[315]/td[1]
  ${OPCAO316}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[316]/td[1]
  ${OPCAO317}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[317]/td[1]
  ${OPCAO318}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[318]/td[1]
  ${OPCAO319}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[319]/td[1]
  ${OPCAO320}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[320]/td[1]
  ${OPCAO321}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[321]/td[1]
  ${OPCAO322}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[322]/td[1]
  ${OPCAO323}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[323]/td[1]
  ${OPCAO324}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[324]/td[1]
  
   Element Should Contain  ${OPCAO1}  Estrutura
   Element Should Contain  ${OPCAO2}  Empresa
   Element Should Contain  ${OPCAO3}  Organograma
   Element Should Contain  ${OPCAO4}  Cadastro de Empresa
   Element Should Contain  ${OPCAO5}  Cargo
   Element Should Contain  ${OPCAO6}  Escala
   Element Should Contain  ${OPCAO7}  Cadastro de Escala
   Element Should Contain  ${OPCAO8}  Horário de Escala
   Element Should Contain  ${OPCAO9}  Centro de Custo
   Element Should Contain  ${OPCAO10}  Filial
   Element Should Contain  ${OPCAO11}  Formulário de Cadastro de Tipo de Usuário
   Element Should Contain  ${OPCAO12}  Area de Risco
   Element Should Contain  ${OPCAO13}  Cadastro
   Element Should Contain  ${OPCAO14}  Consulta
   Element Should Contain  ${OPCAO15}  Codin
   Element Should Contain  ${OPCAO16}  Colaborador
   Element Should Contain  ${OPCAO17}  Controle
   Element Should Contain  ${OPCAO18}  Ambiente
   Element Should Contain  ${OPCAO19}  Cadastro de Tipo de Contrato
   Element Should Contain  ${OPCAO20}  Estacionamento
   Element Should Contain  ${OPCAO21}  Cadastro de Estacionamentos
   Element Should Contain  ${OPCAO22}  Refeitório
   Element Should Contain  ${OPCAO23}  EPI - Equipamento de proteção individual
   Element Should Contain  ${OPCAO24}  Cadastro de Tipos de EPI
   Element Should Contain  ${OPCAO25}  Cadastro de EPI
   Element Should Contain  ${OPCAO26}  Cadastro de EPI por Local
   Element Should Contain  ${OPCAO27}  Cadastro de EPI por Centro de Custo e Cargo
   Element Should Contain  ${OPCAO28}  Cadastro de EPI por Centro de Custo
   Element Should Contain  ${OPCAO29}  Cadastro de EPI por Cargo
   Element Should Contain  ${OPCAO30}  Cadastro de Termo de Compromisso para Entrega de EPI
   Element Should Contain  ${OPCAO31}  Grupo de Email - EPI
   Element Should Contain  ${OPCAO32}  Histórico de EPI por Colaborador
   Element Should Contain  ${OPCAO33}  Relatórios
   Element Should Contain  ${OPCAO34}  Histórico de EPI por Colaborador
   Element Should Contain  ${OPCAO35}  Histórico de EPI por Visitante
   Element Should Contain  ${OPCAO36}  Empresa Terceira
   Element Should Contain  ${OPCAO37}  Cadastro de Empresa Terceira
   Element Should Contain  ${OPCAO38}  Contratos
   Element Should Contain  ${OPCAO39}  Situação Trabalhista
   Element Should Contain  ${OPCAO40}  Feriado
   Element Should Contain  ${OPCAO41}  Planta
   Element Should Contain  ${OPCAO42}  Portaria e Recepção
   Element Should Contain  ${OPCAO43}  Integração TOTVS
   Element Should Contain  ${OPCAO44}  Configuração Elevadores
   Element Should Contain  ${OPCAO45}  Cadastro de Torres
   Element Should Contain  ${OPCAO46}  Cadastro de Andares
   Element Should Contain  ${OPCAO47}  Cadastro de Elevadores
   Element Should Contain  ${OPCAO48}  Agencias
   Element Should Contain  ${OPCAO49}  Relatório de Cadastro de Agências
   Element Should Contain  ${OPCAO50}  Relatório de Movimentação Agências
   Element Should Contain  ${OPCAO51}  Cadastro de Acesso à Agências
   Element Should Contain  ${OPCAO52}  Consulta Histórico Acesso Agência
   Element Should Contain  ${OPCAO53}  Geração de Token Para Abertura de Agências
   Element Should Contain  ${OPCAO54}  Monitoramento de Cofre
   Element Should Contain  ${OPCAO55}  Consulta Histórico de Ocorrências
   Element Should Contain  ${OPCAO56}  Alarmes Cofre - Imagem
   Element Should Contain  ${OPCAO57}  Dispositivo
   Element Should Contain  ${OPCAO58}  Gateway
   Element Should Contain  ${OPCAO59}  Codin
   Element Should Contain  ${OPCAO60}  Cadastro de Codin
   Element Should Contain  ${OPCAO61}  Grupo de Codin
   Element Should Contain  ${OPCAO62}  Função
   Element Should Contain  ${OPCAO63}  Grupo de REP
   Element Should Contain  ${OPCAO64}  Cadastro de Grupo de REP
   Element Should Contain  ${OPCAO65}  Cadastro de Locais de Prestação de Serviços
   Element Should Contain  ${OPCAO66}  Atualizar Grupo de REP Coletivo
   Element Should Contain  ${OPCAO67}  AFD
   Element Should Contain  ${OPCAO68}  Histórico de Codin  por  Filial
   Element Should Contain  ${OPCAO69}  Comandos  para  Equipamentos
   Element Should Contain  ${OPCAO70}  Grupo de Acessos
   Element Should Contain  ${OPCAO71}  Tipo de Acesso
   Element Should Contain  ${OPCAO72}  Alarme
   Element Should Contain  ${OPCAO73}  Sinal de Alarme
   Element Should Contain  ${OPCAO74}  Procedimento de Alarme
   Element Should Contain  ${OPCAO75}  Lote de Comando
   Element Should Contain  ${OPCAO76}  Reação de Alarme
   Element Should Contain  ${OPCAO77}  Reação de Acesso
   Element Should Contain  ${OPCAO78}  Notificações
   Element Should Contain  ${OPCAO79}  CFTV
   Element Should Contain  ${OPCAO80}  Grupo de Cameras
   Element Should Contain  ${OPCAO81}  Cadastros de Grupos
   Element Should Contain  ${OPCAO82}  Cadastro de Cameras por Grupo
   Element Should Contain  ${OPCAO83}  Cadastro de Tipos de Alarmes de Trânsito
   Element Should Contain  ${OPCAO84}  Identificação
   Element Should Contain  ${OPCAO85}  Colaborador
   Element Should Contain  ${OPCAO86}  Empregado
   Element Should Contain  ${OPCAO87}  Terceiro
   Element Should Contain  ${OPCAO88}  Cadastro de Terceiro
   Element Should Contain  ${OPCAO89}  Tipo de Terceiro
   Element Should Contain  ${OPCAO90}  Parceiro
   Element Should Contain  ${OPCAO91}  Histórico
   Element Should Contain  ${OPCAO92}  Crachá
   Element Should Contain  ${OPCAO93}  Afastamento
   Element Should Contain  ${OPCAO94}  Escala
   Element Should Contain  ${OPCAO95}  Baixa de Crachá
   Element Should Contain  ${OPCAO96}  Cargo
   Element Should Contain  ${OPCAO97}  Local
   Element Should Contain  ${OPCAO98}  Filial
   Element Should Contain  ${OPCAO99}  Centro de Custo
   Element Should Contain  ${OPCAO100}  Contrato
   Element Should Contain  ${OPCAO101}  Programação
   Element Should Contain  ${OPCAO102}  Troca de Escala
   Element Should Contain  ${OPCAO103}  Troca de Grupo de Acesso
   Element Should Contain  ${OPCAO104}  Troca de Horário
   Element Should Contain  ${OPCAO105}  Troca de Ponte
   Element Should Contain  ${OPCAO106}  Grupo de Acesso Coletivo
   Element Should Contain  ${OPCAO107}  Senha
   Element Should Contain  ${OPCAO108}  Cadastro de Senha de Acesso Temporária
   Element Should Contain  ${OPCAO109}  Matriz de Acesso
   Element Should Contain  ${OPCAO110}  Lote de Crachá
   Element Should Contain  ${OPCAO111}  Visitante
   Element Should Contain  ${OPCAO112}  Cadastro de Visitante
   Element Should Contain  ${OPCAO113}  Tipo de Visita
   Element Should Contain  ${OPCAO114}  Agendamento Visitante
   Element Should Contain  ${OPCAO115}  Grupo de Visitante
   Element Should Contain  ${OPCAO116}  Agendamento de Grupo
   Element Should Contain  ${OPCAO117}  Solicitar Aprovação de Visita
   Element Should Contain  ${OPCAO118}  Aprovar Solicitação de Visita
   Element Should Contain  ${OPCAO119}  Candidato
   Element Should Contain  ${OPCAO120}  Cadastro de Candidato
   Element Should Contain  ${OPCAO121}  Agendamento
   Element Should Contain  ${OPCAO122}  Autorização Acesso
   Element Should Contain  ${OPCAO123}  Pessoa Não Grata
   Element Should Contain  ${OPCAO124}  Cadastro de Pessoa Não Grata
   Element Should Contain  ${OPCAO125}  Motivo
   Element Should Contain  ${OPCAO126}  Registro
   Element Should Contain  ${OPCAO127}  Perfil de Acesso
   Element Should Contain  ${OPCAO128}  Ocorrência
   Element Should Contain  ${OPCAO129}  Cadastro
   Element Should Contain  ${OPCAO130}  Tipos de Ocorrência
   Element Should Contain  ${OPCAO131}  Crachá
   Element Should Contain  ${OPCAO132}  Pré-Cadastro de Crachá
   Element Should Contain  ${OPCAO133}  Pré-Cadastro de Crachás Por Faixa
   Element Should Contain  ${OPCAO134}  Ler Smart Card
   Element Should Contain  ${OPCAO135}  Mestre e Acesso Geral
   Element Should Contain  ${OPCAO136}  Troca de Crachá
   Element Should Contain  ${OPCAO137}  Gravação Por faixa
   Element Should Contain  ${OPCAO138}  Bloqueio e Desbloqueio
   Element Should Contain  ${OPCAO139}  Motivo de Bloqueio
   Element Should Contain  ${OPCAO140}  Colaborador
   Element Should Contain  ${OPCAO141}  Bloqueio
   Element Should Contain  ${OPCAO142}  Desbloqueio
   Element Should Contain  ${OPCAO143}  Crachá
   Element Should Contain  ${OPCAO144}  Bloqueio
   Element Should Contain  ${OPCAO145}  Desbloqueio
   Element Should Contain  ${OPCAO146}  Liberação Faixa Horária
   Element Should Contain  ${OPCAO147}  Individual
   Element Should Contain  ${OPCAO148}  Coletiva
   Element Should Contain  ${OPCAO149}  Envio de Mensagem
   Element Should Contain  ${OPCAO150}  Individual
   Element Should Contain  ${OPCAO151}  Coletiva
   Element Should Contain  ${OPCAO152}  Mensagens Pré-definidas
   Element Should Contain  ${OPCAO153}  Crédito de Acesso
   Element Should Contain  ${OPCAO154}  Coletivo
   Element Should Contain  ${OPCAO155}  Individual
   Element Should Contain  ${OPCAO156}  Empregado/Terceiro/Parceiro
   Element Should Contain  ${OPCAO157}  Visitante
   Element Should Contain  ${OPCAO158}  Benefício
   Element Should Contain  ${OPCAO159}  Cadastro de Benefício
   Element Should Contain  ${OPCAO160}  Atribuição
   Element Should Contain  ${OPCAO161}  Consumo
   Element Should Contain  ${OPCAO162}  Histórico
   Element Should Contain  ${OPCAO163}  Autorização de Devedores
   Element Should Contain  ${OPCAO164}  Área Restrita
   Element Should Contain  ${OPCAO165}  Autorizar Acesso
   Element Should Contain  ${OPCAO166}  Consultar Acesso
   Element Should Contain  ${OPCAO167}  Chave
   Element Should Contain  ${OPCAO168}  Cadastro de Chave
   Element Should Contain  ${OPCAO169}  Movimentação de Chave
   Element Should Contain  ${OPCAO170}  Relatório de Cadastro de Chave
   Element Should Contain  ${OPCAO171}  Relatório de Movimentação de Chave
   Element Should Contain  ${OPCAO172}  Guarda-Volumes
   Element Should Contain  ${OPCAO173}  Cadastro de Guarda-Volumes
   Element Should Contain  ${OPCAO174}  Movimentação de Guarda-Volumes
   Element Should Contain  ${OPCAO175}  Relatório Guarda-Volumes
   Element Should Contain  ${OPCAO176}  Relatório de Movimentação de Guarda-Volumes
   Element Should Contain  ${OPCAO177}  Liberação de Nível
   Element Should Contain  ${OPCAO178}  Entrada
   Element Should Contain  ${OPCAO179}  Visitante
   Element Should Contain  ${OPCAO180}  Entrada de Visitante
   Element Should Contain  ${OPCAO181}  Saída de Visitante
   Element Should Contain  ${OPCAO182}  Entrada de Grupo
   Element Should Contain  ${OPCAO183}  Consultar Ticket WSG
   Element Should Contain  ${OPCAO184}  Candidato
   Element Should Contain  ${OPCAO185}  Entrada
   Element Should Contain  ${OPCAO186}  Saída
   Element Should Contain  ${OPCAO187}  Provisório
   Element Should Contain  ${OPCAO188}  Colaborador
   Element Should Contain  ${OPCAO189}  Baixa Provisório
   Element Should Contain  ${OPCAO190}  Autorização
   Element Should Contain  ${OPCAO191}  Agendamento
   Element Should Contain  ${OPCAO192}  Entrada
   Element Should Contain  ${OPCAO193}  Baixa de Autorização
   Element Should Contain  ${OPCAO194}  Veículo
   Element Should Contain  ${OPCAO195}  Entrada
   Element Should Contain  ${OPCAO196}  Saída
   Element Should Contain  ${OPCAO197}  Cadastro
   Element Should Contain  ${OPCAO198}  Material
   Element Should Contain  ${OPCAO199}  Cadastro
   Element Should Contain  ${OPCAO200}  Material por Pessoa
   Element Should Contain  ${OPCAO201}  Solicitação de Saída
   Element Should Contain  ${OPCAO202}  Autorização
   Element Should Contain  ${OPCAO203}  Movimentação
   Element Should Contain  ${OPCAO204}  Veículo de Colaborador - Cadastro
   Element Should Contain  ${OPCAO205}  Marcação de Acesso Manual
   Element Should Contain  ${OPCAO206}  Controle
   Element Should Contain  ${OPCAO207}  Comando
   Element Should Contain  ${OPCAO208}  Acesso
   Element Should Contain  ${OPCAO209}  Emergência
   Element Should Contain  ${OPCAO210}  Lote
   Element Should Contain  ${OPCAO211}  Envio Individual de Comandos Player
   Element Should Contain  ${OPCAO212}  Reprocessamento de Marcação
   Element Should Contain  ${OPCAO213}  Reprocessamento de Marcações Orfãs REP
   Element Should Contain  ${OPCAO214}  Monitoramento
   Element Should Contain  ${OPCAO215}  Gráfico
   Element Should Contain  ${OPCAO216}  Acesso - Grid
   Element Should Contain  ${OPCAO217}  Alarme - Grid
   Element Should Contain  ${OPCAO218}  Monitoramento LOG Gerenciador
   Element Should Contain  ${OPCAO219}  Dispositivos Grid
   Element Should Contain  ${OPCAO220}  Monitoramento Gráfico de Equipamentos
   Element Should Contain  ${OPCAO221}  Monitoramento de Acesso Câmeras
   Element Should Contain  ${OPCAO222}  LOG SecurOS
   Element Should Contain  ${OPCAO223}  Entrada de Agencias
   Element Should Contain  ${OPCAO224}  Monitoramento de Câmeras de Trânsito
   Element Should Contain  ${OPCAO225}  Monitoramento de Status de Cameras
   Element Should Contain  ${OPCAO226}  Ativar Emergência
   Element Should Contain  ${OPCAO227}  Processo
   Element Should Contain  ${OPCAO228}  Geração de Lista
   Element Should Contain  ${OPCAO229}  Layout de Arquivo
   Element Should Contain  ${OPCAO230}  Importação
   Element Should Contain  ${OPCAO231}  Exportação
   Element Should Contain  ${OPCAO232}  Relatório
   Element Should Contain  ${OPCAO233}  Email
   Element Should Contain  ${OPCAO234}  Online
   Element Should Contain  ${OPCAO235}  Foto
   Element Should Contain  ${OPCAO236}  Colaborador
   Element Should Contain  ${OPCAO237}  Visitante
   Element Should Contain  ${OPCAO238}  Layout de Relatório
   Element Should Contain  ${OPCAO239}  Configurações
   Element Should Contain  ${OPCAO240}  Crachá
   Element Should Contain  ${OPCAO241}  Filtro de Abrangência
   Element Should Contain  ${OPCAO242}  Email
   Element Should Contain  ${OPCAO243}  Faixa de Acesso de Refeitório
   Element Should Contain  ${OPCAO244}  Pessoa Não Grata
   Element Should Contain  ${OPCAO245}  Câmera
   Element Should Contain  ${OPCAO246}  Log de Aplicação
   Element Should Contain  ${OPCAO247}  Cadastro
   Element Should Contain  ${OPCAO248}  Log Eventos Suriplayer
   Element Should Contain  ${OPCAO249}  Consulta
   Element Should Contain  ${OPCAO250}  Idioma
   Element Should Contain  ${OPCAO251}  Hora Extra
   Element Should Contain  ${OPCAO252}  Configurações Gerais
   Element Should Contain  ${OPCAO253}  SAML
   Element Should Contain  ${OPCAO254}  Entrada de Visitantes
   Element Should Contain  ${OPCAO255}  Matrícula Automática
   Element Should Contain  ${OPCAO256}  Configuração de LDAP
   Element Should Contain  ${OPCAO257}  Configurações Crachá
   Element Should Contain  ${OPCAO258}  Configurações Gerais Do Sistema
   Element Should Contain  ${OPCAO259}  Tipo de Biometria por Grupo de Usuário
   Element Should Contain  ${OPCAO260}  Integração TOTVS
   Element Should Contain  ${OPCAO261}  Configurações de EPI
   Element Should Contain  ${OPCAO262}  Cadastro de Tipo de Refeição
   Element Should Contain  ${OPCAO263}  Upload de Firmware
   Element Should Contain  ${OPCAO264}  Cadastro de Grupos de Abrangência
   Element Should Contain  ${OPCAO265}  Campos Customizáveis
   Element Should Contain  ${OPCAO266}  Usuários
   Element Should Contain  ${OPCAO267}  Usuário Aprovador de Solitação de Visita
   Element Should Contain  ${OPCAO268}  Grupo de Usuário
   Element Should Contain  ${OPCAO269}  Usuário
   Element Should Contain  ${OPCAO270}  Histórico de Perfil
   Element Should Contain  ${OPCAO271}  Diretiva de Segurança
   Element Should Contain  ${OPCAO272}  Ativação de Usuário
   Element Should Contain  ${OPCAO273}  Usuário x Portaria
   Element Should Contain  ${OPCAO274}  Alterar senha
   Element Should Contain  ${OPCAO275}  LGPD
   Element Should Contain  ${OPCAO276}  LGPD - Configurações de Dados Sensíveis
   Element Should Contain  ${OPCAO277}  Relatórios
   Element Should Contain  ${OPCAO278}  Importar
   Element Should Contain  ${OPCAO279}  Ativar
   Element Should Contain  ${OPCAO280}  Grupo de Relatório
   Element Should Contain  ${OPCAO281}  Consulta Impressa
   Element Should Contain  ${OPCAO282}  Gerador de Relatorio
   Element Should Contain  ${OPCAO283}  Meu Acesso
   Element Should Contain  ${OPCAO284}  Ajuda
   Element Should Contain  ${OPCAO285}  Conteúdo da Ajuda
   Element Should Contain  ${OPCAO286}  Sobre
   Element Should Contain  ${OPCAO287}  Sair
   Element Should Contain  ${OPCAO288}  Sair
   Element Should Contain  ${OPCAO289}  Veículos
   Element Should Contain  ${OPCAO290}  Prontuário de Veículos
   Element Should Contain  ${OPCAO291}  Cadastro
   Element Should Contain  ${OPCAO292}  Veículo
   Element Should Contain  ${OPCAO293}  Marcas
   Element Should Contain  ${OPCAO294}  Modelos
   Element Should Contain  ${OPCAO295}  Acessórios
   Element Should Contain  ${OPCAO296}  Situações
   Element Should Contain  ${OPCAO297}  Motivo de Uso
   Element Should Contain  ${OPCAO298}  Frota
   Element Should Contain  ${OPCAO299}  Utilização Veículos
   Element Should Contain  ${OPCAO300}  Agendamentos de Veículo - Frota
   Element Should Contain  ${OPCAO301}  Aprovação de Agendamentos - Frota
   Element Should Contain  ${OPCAO302}  Entrega
   Element Should Contain  ${OPCAO303}  Devolução
   Element Should Contain  ${OPCAO304}  Empresa
   Element Should Contain  ${OPCAO305}  Condutores
   Element Should Contain  ${OPCAO306}  Veículos
   Element Should Contain  ${OPCAO307}  Históricos
   Element Should Contain  ${OPCAO308}  Crachá Veículo
   Element Should Contain  ${OPCAO309}  Local Veículo
   Element Should Contain  ${OPCAO310}  Situação Veículo
   Element Should Contain  ${OPCAO311}  Seguros
   Element Should Contain  ${OPCAO312}  Cobertura
   Element Should Contain  ${OPCAO313}  Corretores
   Element Should Contain  ${OPCAO314}  Cadastro
   Element Should Contain  ${OPCAO315}  Ocorrências
   Element Should Contain  ${OPCAO316}  Sinistros
   Element Should Contain  ${OPCAO317}  Reclamações
   Element Should Contain  ${OPCAO318}  Infrações
   Element Should Contain  ${OPCAO319}  Cadastro
   Element Should Contain  ${OPCAO320}  Multas
   Element Should Contain  ${OPCAO321}  Consultas
   Element Should Contain  ${OPCAO322}  Agendamento
   Element Should Contain  ${OPCAO323}  Utilização
   Element Should Contain  ${OPCAO324}  Definições



Verificar o campo Opções
  ${LABEL}    Set Variable  xpath=//*[@id="hidden_bloco_0"]/tbody/tr/td/div[2]/div/table/thead/tr/th[2]
  Element Should Contain  ${LABEL}  Opções

  ${NUM}  Set Variable  1
  @{IGNORAR}  Create List  ${57}  ${84}  ${126}  ${178}  ${206}  ${227}  ${239}  ${277}  ${284}  ${287}  ${289}

  FOR  ${X}  IN RANGE  323
    
    ${NUM}  Evaluate  ${NUM} + 1
    ${CON}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[${NUM}]/td[2]/table/tbody/tr/td[1]
    ${INC}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[${NUM}]/td[2]/table/tbody/tr/td[2]
    ${DEL}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[${NUM}]/td[2]/table/tbody/tr/td[3]
    ${ALT}  Set Variable  xpath=/html/body/form[5]/table/tbody/tr[2]/td/table/tbody/tr/td/div/table/tbody/tr/td/div[2]/div/table/tbody/tr[${NUM}]/td[2]/table/tbody/tr/td[4]
    
    Run Keyword If  $NUM in $IGNORAR   Continue For Loop

    Element Should Contain  ${CON}  Con
    Element Should Contain  ${INC}  Inc
    Element Should Contain  ${DEL}  Del
    Element Should Contain  ${ALT}  Alt
  END

    
