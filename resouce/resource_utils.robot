*** Settings ***
Library  SeleniumLibrary
Library  ../superutil/opencv/tools.py
Library  ../superutil/Custom.py
Library  ../api/audit/client/send_data.py
Library  ../superutil/check_field.py

Resource  ../resource/resource_requirements.robot

*** Keywords ***

Mudar para Janela de Nível 1

  ${HANDLES}     Get Window Handles
  Switch Window  ${HANDLES}[1]
  Maximize Browser Window

Fechar Janela Atual
    Close Window
    ${HANDLES}     Get Window Handles
    Switch Window  ${HANDLES}[0]

Capturar Screenshot Da Aplicação Como "${ARQUIVO}"
  
  IF  '${ALLOWED}' == 'FALSE'
    ${NOVO_ARQUIVO}  Run Keyword  Remover Caracteres Especiais  ${ARQUIVO}
    ${APLICACAO}     Run Keyword  Obter Nome da aplicacao  ${NOVO_ARQUIVO}
    ${TIPO_PRINT}    Run Keyword  Obter Tipo Print  ${NOVO_ARQUIVO}

    ${PATH_IMG}  Set Variable  ./results/media/${APLICACAO}/${SERVER}/${LANGUAGE}/DOC/${BROWSER}
    ${PATH_FINAL}    Set Variable   ${PATH_IMG}/${NOVO_ARQUIVO}
    
    Set Screenshot Directory    ${PATH_IMG}
    Capture Page Screenshot  ${NOVO_ARQUIVO}
    Run Keyword  Tratar Imagem   ${PATH_FINAL}  ${LANGUAGE}  ${SERVER}

  END

Mudar Frame Aplicação "${FRAME}"

  IF  '${FRAME}' == 'mnu_iframe'
      Unselect Frame
  END

  ${STATUS}  Run Keyword And Return Status  Element Should Be Visible  ${FRAME}

  IF  '${STATUS}' == 'True'
    Wait Until Element Is Visible    ${FRAME}
    Select Frame  ${FRAME}
  END
  
Enviar Resultado
  #[Arguments]     ${SOURCE1}   ${SOURCE2}   ${SOURCE3}

  #Run Keyword  Publicar Resultado   ${SOURCE1}  ${SOURCE2}  ${SOURCE3}  ${OUTPUT DIR}  ${USERNAME}  ${SERVER}  ${BROWSER}  ${LANGUAGE}  ${MODE}

E Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
  ${LABEL_TESTE}  Set Variable  xpath=//*[@id='id_label_teste']
  ${CAMPO_TESTE}  Set Variable  xpath=//*[@name='teste']

  ${VERIFICA_LABEL}  Run Keyword And Return Status  Element Should Be Visible  ${LABEL_TESTE}
  ${VERIFICA_CAMPO}  Run Keyword And Return Status  Element Should Be Visible  ${CAMPO_TESTE}

  IF  '${VERIFICA_LABEL}' == 'True' or '${VERIFICA_CAMPO}' == 'True'
    Run Keyword  Registrar Aplicacao  ${APPNAME}  ${SCREENNAME}  verificacao campo teste
  END

E verificar mensagem informativa: * Campos obrigatórios
    ${MSG}  Set Variable    xpath=//span[@class='scFormRequiredOddColor']
    Element Should Contain    ${MSG}     * Campos obrigatórios
