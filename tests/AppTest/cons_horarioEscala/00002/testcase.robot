*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/app/resource_abaescala.robot
Resource        ../../../../resource/app/resource_frmescalahorarios.robot
Resource        ../../../../resource/app/resource_frmescala.robot
Resource        ../../../../resource/app/resource_cons_horarioEscala.robot
Resource        ../../../../resource/app/resource_consescalacad.robot
Resource        ../../../../resource/resource_utils.robot
  
Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}


*** Variables ***

${SCREENNAME}  Consulta Horário Escala (Busca Externa)
${APPNAME}     cons_horarioEscala
${OBJETIVO}    Verificar todos os campos na tela Consulta Horário Escala (Busca Externa)

*** Test Cases ***
Testcase: Verificar todos os campos na tela Consulta Horário Escala (Busca Externa)
  [Tags]  VERIFY  
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu Estrutura | Empresa | Escala | Cadastro de Escala
  Então devo visualizar a tela: Consulta de Escalas
  E clicar no botão: Editar o Registro "1"
  Então devo visualizar a tela: Cadastro de Escala (Atualização)
  E clicar na aba Horários
  E eu visualizar a tela: Relacionamento Horários X Escala (Atualização)
  Ao clicar no botão: Buscar Dados Externos para Horário
  Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta Horário Escala (Busca Externa)
  E verificar a label Código do Horário 
  E verificar a label Descrição
  E verificar se existe o campo Teste


*** Keywords ***
Dado que eu acesse o menu Estrutura | Empresa | Escala | Cadastro de Escala
  resource_mnu.Clicar No Menu Estrutura | Empresa | Escala | Cadastro de Escala

Então devo visualizar a tela: Consulta de Escalas
  resource_consescalacad.Acessar Tela Consulta de Escalas

E clicar no botão: Editar o Registro "${NUM}"
  resource_btn.Clicar No Botão Editar o Registro "${NUM}"

Então devo visualizar a tela: Cadastro de Escala (Atualização)
  resource_frmescala.Acessar Tela Cadastro de Escala (Atualização)

E clicar na aba Horários
  resource_abaescala.Clicar Na Aba Horários

E eu visualizar a tela: Relacionamento Horários X Escala (Atualização)
  resource_frmescalahorarios.Acessar Tela Relacionamento Horários X Escala (Atualização)

Ao clicar no botão: Buscar Dados Externos para Horário
  resource_frmescalahorarios.Clicar No Botão Buscar Dados Externos Para Horário

Então o navegador deve exibir uma nova janela e eu visualizar a tela Consulta Horário Escala (Busca Externa)
  resource_cons_horarioEscala.Acessar Tela Consulta Horário Escala (Busca Externa)

E verificar a label Código do Horário 
  resource_cons_horarioEscala.Verificar a label Código do Horário 

E verificar a label Descrição
  resource_cons_horarioEscala.Verificar a label Descrição

E verificar se existe o campo Teste
  resource_utils.Verificar Campo Teste na Tela "${SCREENNAME}" da Aplicação "${APPNAME}"
