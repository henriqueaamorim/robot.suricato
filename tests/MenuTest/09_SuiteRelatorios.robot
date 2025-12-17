*** Settings ***
Resource        ../../resource/resource_login.robot
Resource        ../../resource/common/resource_mnu.robot
Suite Setup     Acessar Suricato
Suite Teardown  Fechar navegador
Test Setup      Sleep    2s


*** Test Cases ***
Cenario: Navegar No Menu Relatórios | Importar
  Clicar No Menu Relatórios | Importar

Cenário: Navegar No Menu Relatórios | Ativar
  Clicar No Menu Relatórios | Ativar

Cenário: Navegar No Menu Relatórios | Grupo de Relatório
  Clicar No Menu Relatórios | Grupo de Relatório

Cenário: Navegar No Menu Relatórios | Consulta Impressa
  Clicar No Menu Relatórios | Consulta Impressa

Cenário: Navegar No Menu Relatórios | Meu Acesso
  Clicar No Menu Relatórios | Meu Acesso
