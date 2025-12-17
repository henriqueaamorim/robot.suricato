*** Settings ***
Resource        ../../../resource/resource_login.robot
Resource        ../../../resource/app/resource_frmcolaboradoresacesso.robot
Resource        ../../../resource/app/resource_frmcolaborador.robot
Resource        ../../../resource/app/resource_conscolaboradores.robot


Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Popular os campos dos grupos de acessos.


*** Test Cases ***



Testcase: Acessar Tela Cadastro de Empregado - Perfil de Acesso
  [Tags]  PRINT  POPULATED
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Identificação | Colaborador | Empregado
  Então devo visualizar Consulta de Colaboradores/Terceiros/Parceiros
  E clicar no botão: Editar Registro "1"
  E clicar no botão: Perfil de Acesso
  E preencher o campo: Grupo de Acesso do Visitante "518"
  E preencher o campo: Grupo de Acesso em Dias Normais "998"
  E preencher o campo: Grupo de Acesso em Feriados "518"
  E preencher o campo: Grupo de Acesso em Sábados "998"
  E preencher o campo: Grupo de Acesso em Domingos "518"
  E clicar no botão: Alterar o Registro
  Então devo visualizar a tela: Cadastro de Empregado - Perfil de Acesso

*** Keywords ***
Dado que eu acesse o menu: Identificação | Colaborador | Empregado
  resource_mnu.Clicar No Menu Identificação | Colaborador | Empregado

Então devo visualizar Consulta de Colaboradores/Terceiros/Parceiros 
  resource_conscolaboradores.Acessar Tela Consulta de Colaboradores/Terceiros/Parceiros

E clicar no botão: Editar Registro "${NUM}"
  resource_btn.Clicar No Botão Editar o Registro "${NUM}" 

E clicar no botão: Perfil de Acesso
  resource_btn.Clicar No Botão Perfil de Acesso

E preencher o campo: Grupo de Acesso do Visitante "${ACESSO}"
  resource_frmcolaboradoresacesso.Preencher o campo Grupo de Acesso do Visitante "${ACESSO}"

E preencher o campo: Grupo de Acesso em Dias Normais "${ACESSO}"
  resource_frmcolaboradoresacesso.Preencher o campo Grupo de Acesso em Dias Normais "${ACESSO}"


E preencher o campo: Grupo de Acesso em Feriados "${ACESSO}"
  resource_frmcolaboradoresacesso.Preencher o campo Grupo de Acesso em Feriados "${ACESSO}"


E preencher o campo: Grupo de Acesso em Sábados "${ACESSO}"
  resource_frmcolaboradoresacesso.Preencher o campo Grupo de Acesso em Sábados "${ACESSO}"


E preencher o campo: Grupo de Acesso em Domingos "${ACESSO}"
  resource_frmcolaboradoresacesso.Preencher o campo Grupo de Acesso em Domingos "${ACESSO}"

E clicar no botão: Alterar o Registro
  resource_btn.Clicar No Botão Alterar o Registro (Inferior)


Então devo visualizar a tela: Cadastro de Empregado - Perfil de Acesso
  resource_frmcolaboradoresacesso.Acessar Tela Cadastro de Empregado - Perfil de Acesso
