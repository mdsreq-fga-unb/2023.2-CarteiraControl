# Introdução
O Processo Unificado emprega casos de uso como uma maneira de declarar e especificar requisitos. Nesse contexto, é importante destacar que, antes de detalhar os casos de uso, foi essencial realizar a elicitação dos requisitos que seriam posteriormente declarados. Esse processo inicial de levantamento de requisitos desempenha um papel fundamental na construção de uma base sólida para a especificação detalhada dos casos de uso no decorrer do desenvolvimento.
## Requisitos funcionais
|ID| Declaração |
|----| ------|
|RF1| Cadastrar usuário |
|RF2| Logar usuário |
|RF3| Cadastrar até 3 contas bancárias |
|RF4| Alterar despesas |
|RF5| Deletar despesas |
|RF6| Categorizar despesas |
|RF7| Filtrar os gastos por categoria de gastos |
|RF8| Pesquisar gastos |
|RF9| Registrar despesas mensais |
|RF10| Acompanhar progresso em direção às metas de economia |
|RF11| Notificar quando estiver a 10% do teto de gastos|
|RF12| Definir teto de gastos para cada categoria de despesas |
|RF13| Definir objetivos de economia |
|RF14| Registrar os ganhos mensais |
|RF15| Registrar transferências|
|RF16| Gerar gráfico de gastos no final do mês |
|RF17| Criar gráfico sobre as transações financeiras |
|RF18| Deletar conta |
|RF19| Acessar perfil do usuário |
|RF20| Alterar conta |
|RF21| Destacar categorias de gastos mais frequentes|

## casos de Uso
### Atores

<p align="justify">&emsp;&emsp; Foi identificado 1 ator dos fluxos de eventos do nosso sistema, sendo ele: </p>

- <b>Usuário:</b> refere-se ao utilizado do app carteira control, sendo este o que usa e se beneficia do app.

### Casos de Uso Identificados

<p align="justify">&emsp;&emsp; Com base nos requisitos elicitados, foram identificados 8 casos de uso, como apresentado na Tabela abaixo: </p>

|ID| Nome do Casos de Uso| Descrição | Requisitos Envolvidos| Resultado|
|---|----|----|----|---|
|CDU-01|Gerenciar casos de Usuário | O usuário pode cadastrar, logar e ainda cadastrar contas bancárias |RF1	Cadastrar usuário, RF2	Logar usuário, RF3	Cadastrar até 3 contas bancárias | Acesso do Usário |
|CDU-02|Gerenciar Ganhos| Relata os ganhos financeiros do usuário |  RF14	Registrar os ganhos mensais | Gastos Apresentados |
|CDU-03|Manter o suário informado | O usuário tem informações de como estão suas esconomias |RF10	Acompanhar progresso em direção às metas de economia, RF11	Notificar quando estiver a 10% do teto de gastos RF21	Destacar categorias de gastos mais frequentes| Uusário informado sobre suas finanças|
|CDU-04|Gerenciar conta do Usuário | O usuário pode alterar, acessar seu perfil e deletá-lo|RF18	Deletar conta, RF19	Acessar perfil do usuário, RF20	Alterar conta | Conta do usuário |
|CDU-05|Gerenciar plano de gastos para economia | O  usuário define um plano de gastos com objetivos de economia|RF12	Definir teto de gastos para cada categoria de despesas, RF13	Definir objetivos de economia | Plano de gastos|
|CDU-06|Gerenciar Transações Financeiras | O usuário tem controle de suas transações financeiras|RF15	Registrar transferências | Gerenciamentos de Transações financeiras|
|CDU-07|Definir Estatísticas | O usuário visulzias gráficos estatísticos de suas economias|RF16	Gerar gráfico de gastos no final do mês, RF17	Criar gráfico sobre as transações financeiras | Gerar Estatísticas  |
|CDU-08 | Gerenciar Despesas | O usuário pode alterar, deletar, registrar, categorizar, pesquisar e filtrar suas depesas | RF4	Alterar despesas, RF5	Deletar despesas, RF6	Categorizar despesas, RF9	Registrar despesas mensais, RF7	Filtrar os gastos por categoria de gastos, RF8	Pesquisar gastos | Despesas Apresentadas |


## Histórico de versão

| Versão  | Autor| Descrição | Data |
| :---: | :----: | :-------: | :---: |
| 1.0| Juan Pablo |  Declaração dos Casos de Uso | 06/11 |