*** Settings ***
Library      SeleniumLibrary
Resource        ../../resource/common/resource_mnu.robot
Resource        ../../resource/common/resource_btn.robot
Resource        ../../resource/resource_utils.robot

*** Variables ***

*** Keywords ***
#Menu 
resource_mnu.Clicar No Menu Estrutura | Empresa | Local | Organograma 

#SCRREN 
Acessar Tela: Organograma (Consulta)
  ${APPNAME}      Set Variable   cnsEmpresaLocal
  ${OBJ}          Set Variable   CNS
  ${SCREENNAME}   Set Variable   Organograma
  ${ELEMENT}      Set Variable   xpath=//td[contains(text(),'Organograma')]
  Sleep  2s
  Mudar Frame Aplicação "TB_iframeContent"
  Wait Until Element is Visible  ${ELEMENT}
  Element Text Should Be  ${ELEMENT}  ${SCREENNAME}

  Run Keyword If  '${MODE}' == 'DOC'  Capturar Screenshot Da Aplicação Como "base__${APPNAME}__${SCREENNAME}__V1.png"



