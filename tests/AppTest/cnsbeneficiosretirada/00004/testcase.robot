*** Settings ***
Resource        ../../../../resource/resource_login.robot
Resource        ../../../../resource/common/resource_btn.robot
Resource        ../../../../resource/common/resource_report.robot
Resource        ../../../../resource/app/resource_cnsRelatorio.robot
Resource        ../../../../resource/app/resource_cnsbeneficiosretirada.robot

Test Setup      Acessar Suricato
Test Teardown   Fechar Navegador
#Suite Teardown  Enviar Resultado  ${SUITE SOURCE}  ${OBJETIVO}  ${SUITE STATUS}

*** Variables ***

${OBJETIVO}   Preencher todos os campos da tela Consulta de Benefícios Consumidos - Filtro

*** Test Cases ***

Testcase: Preencher todos os campos da tela Consulta de Benefícios Consumidos - Filtro
  [Tags]  REGISTER  POLYVALENT 
  [Documentation]   ${OBJETIVO}
  
  Dado que eu acesse o menu: Relatórios | Consulta Impressa
  Quando eu visualizar a tela: Impressão de Relatório
  Então devo clicar no botão: Pesquisar Registros
  Ao visualizar a tela de Impressão de Relatório (Filtro)
  E digitar a descrição: "Consulta de Beneficios Retirada", e clicar em Pesquisar
  Então devo visualizar a tela: Consulta de Benefícios Consumidos - Filtro
  E preencher o campo Colaborador "ok"
  E preencher o campo Data . Ret. inicial "15/10/2020"
  E preencher o campo Data . Ret. final "15/11/2022"

*** Keywords ***
Dado que eu acesse o menu: Relatórios | Consulta Impressa
  resource_mnu.Clicar No Menu Relatórios | Consulta Impressa

Quando eu visualizar a tela: Impressão de Relatório
  resource_cnsRelatorio.Acessar Tela Impressão de Relatório

Então devo clicar no botão: Pesquisar Registros
  resource_btn.Clicar No Botão Pesquisar Registros

Ao visualizar a tela de Impressão de Relatório (Filtro)
  resource_cnsRelatorio.Acessar Tela Impressão de Relatório (Filtro)

E digitar a descrição: "Consulta de Beneficios Retirada", e clicar em Pesquisar
  resource_report.Navegar no Relatório: Consulta de Beneficios Retirada

Então devo visualizar a tela: Consulta de Benefícios Consumidos - Filtro
  resource_cnsbeneficiosretirada.Acessar Tela Consulta de Benefícios Consumidos - Filtro

E preencher o campo Colaborador "${COLABORADOR}"
  resource_cnsbeneficiosretirada.Preencher o campo Colaborador "${COLABORADOR}"

E preencher o campo Data . Ret. inicial "${DIA}/${MES}/${ANO}"
  resource_cnsbeneficiosretirada.Preencher o campo Data . Ret. inicial "${DIA}/${MES}/${ANO}"

E preencher o campo Data . Ret. final "${DIA}/${MES}/${ANO}"
  resource_cnsbeneficiosretirada.Preencher o campo Data . Ret. final "${DIA}/${MES}/${ANO}"
