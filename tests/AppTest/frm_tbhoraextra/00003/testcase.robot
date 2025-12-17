*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_frm_tbhoraextra.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Cadastrar uma Hora Extra.


*** Test Cases ***

Testcase: Cadastrar uma Hora Extra
  [Tags]  REGISTER  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Configurações | Hora Extra
  Então devo visualizar a tela: Hora Extra
  E clicar no botão: Abrir um novo registro
  Então devo visualizar a tela: Hora Extra - Cadastro
  E preencher o campo Nome do Grupo "Nome do Grupo"
  E preencher o campo Horário 1 "1200"
  E preencher o campo Horário 2 "1300"
  E clicar no botão: Incluir o Registro
  Então devo visualizar a tela: Hora Extra 

*** Keywords ***
Dado que eu acesse o menu: Configurações | Hora Extra
  resource_mnu.Clicar No Menu Configurações | Hora Extra
  
E clicar no botão: Abrir um novo registro
  resource_btn.Clicar No Botão Abrir Um Novo Registro

Então devo visualizar a tela: Hora Extra - Cadastro
  resource_frm_tbhoraextra.Acessar Tela Hora Extra - Cadastro

E preencher o campo Nome do Grupo "${GRUPO}"
  resource_frm_tbhoraextra.Preencher o campo Nome do Grupo "${GRUPO}"

E preencher o campo Horário 1 "${HORARIO}"
  resource_frm_tbhoraextra.Preencher o campo Horário 1 "${HORARIO}"

E preencher o campo Horário 2 "${HORARIO}"
  resource_frm_tbhoraextra.Preencher o campo Horário 2 "${HORARIO}"

E clicar no botão: Incluir o Registro
  resource_btn.Clicar No Botão Incluir o Registro

Então devo visualizar a tela: Hora Extra 
  resource_frm_tbhoraextra.Acessar Tela Hora Extra
  