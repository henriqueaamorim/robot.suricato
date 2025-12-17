*** Settings ***
Library  SeleniumLibrary
Library  ../../superutil/Custom.py


*** Variables ***
${POPUP}  PopUp

*** Keywords ***
#VERIFY
${ARGUMENTO} visualizar mensagem de sucesso: Novo registro inserido com sucesso!
    ${POPUP}  Set Variable  xpath=//*[@id="swal2-content" and contains(text(), "Novo registro inserido com sucesso!")]
    Wait Until Element is Visible   ${POPUP}     timeout=10s  
    Element Should Contain    ${POPUP}  Novo registro inserido com sucesso!


${ARGUMENTO} Visualizar Pop-up de erro Tipo do Crachá: Campo Obrigatório Número do Crachá: Campo Obrigatório
    Unselect Frame
    Wait Until Element is Visible   //*[@id="swal2-content" and contains(text(), "Tipo do Crachá: Campo Obrigatório") and "Número do Crachá: Campo Obrigatório"]    timeout=10s  
    Element Should Contain   //*[@id="swal2-content" and contains(text(), "Tipo do Crachá: Campo Obrigatório") and "Número do Crachá: Campo Obrigatório"]    Tipo do Crachá: Campo Obrigatório

${ARGUMENTO} Visualizar Pop-up de erro: Tipo do Crachá: Campo Obrigatório
    Unselect Frame
    Wait Until Element is Visible   //*[@id="swal2-content" and contains(text(), "Tipo do Crachá: Campo Obrigatório")]    timeout=10s  
    Element Should Contain   //*[@id="swal2-content" and contains(text(), "Tipo do Crachá: Campo Obrigatório")]    Tipo do Crachá: Campo Obrigatório

${ARGUMENTO} Visualizar Pop-up de erro: Número do Crachá: Campo Obrigatório
    Unselect Frame
    Wait Until Element is Visible   //*[@id="swal2-content" and contains(text(), "Número do Crachá: Campo Obrigatório")]    timeout=10s  
    Element Should Contain   //*[@id="swal2-content" and contains(text(), "Número do Crachá: Campo Obrigatório")]    Número do Crachá: Campo Obrigatório
      
${ARGUMENTO} Visualizar o Pop-up de Erro com a Mensagem: Erro na inclusão - Registro já existe
    Unselect Frame
    Wait Until Element is Visible   //*[@id="swal2-content" and contains(text(), "Erro na inclusão - Registro já existe")]    timeout=10s  
    Element Should Contain   //*[@id="swal2-content" and contains(text(), "Erro na inclusão - Registro já existe")]    Erro na inclusão - Registro já existe

      
