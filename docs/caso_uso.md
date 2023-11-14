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

### Especificação dos Casos de Uso

#### CdU-01 - Gerenciar casos de Usuário

|**Nome do caso de uso** |Gerenciar casos de Usuário|
| :----------- | :- |
|**Autor**|Juan Pablo|
|**1. Atores**|Usuário|
|**2. Breve Descrição**|Este caso de uso permite que o usuário realize operações relacionadas à gestão de seu perfil, incluindo o cadastro, login e o gerenciamento de até três contas bancárias associadas.|
|**3. Fluxo básico de eventos**| <p>FB.</p>
-   3.1. O usuário acessa o sistema 
-   3.2. O usuário escolhe a opção de cadastrar um novo usuário (RF1)   
-   3.3. O sistema solicita as informações necessárias para o cadastro do usuário.

-   3.4. O usuário fornece os dados necessários.

-   3.5. O sistema valida as informações e cadastra o usuário.

-   3.6. O usuário escolhe a opção de fazer login (RF2).

-   3.7. O sistema solicita as credenciais do usuário.

-   3.8. O usuário fornece as credenciais e o sistema valida.

-   3.9. O sistema autentica o usuário e o direciona para a área logada.

-   3.10. O usuário escolhe a opção de cadastrar conta bancária (RF3).

-   3.11. O sistema solicita as informações da conta bancária.

-   3.12. O usuário fornece os dados necessários.

-   3.13. O sistema valida as informações e associa a conta bancária ao usuário.

**4. Fluxo Alternativos**  

4.1. Área de Funcionalidade: Cadastro de Usuário

-       4.1.1. A1 Primeiro Fluxo Alternativo

-       4.1.1.1. Um Subfluxo Alternativo
Se as informações fornecidas pelo usuário no cadastro forem inválidas, o sistema exibe uma mensagem de erro.

-       4.1.2. A2 Segundo Fluxo Alternativo

- Se o usuário já possuir uma conta, ele pode optar por fazer login em vez de cadastrar um novo usuário.

4.2. Outra Área de Funcionalidade: Cadastro de Conta Bancária

-       4.2.1. AN Outro Fluxo Alternativo

- Se as informações da conta bancária fornecidas forem inválidas, o sistema notifica o usuário e não realiza o cadastro.
|

**5. Fluxos de exceção**

5.1. FE1 – Fluxo de Exceção

- Se houver falha na autenticação durante o login, o sistema notifica o usuário e oferece opções para recuperação de senha.

5.2. FE2 – Fluxo de Exceção

- Se houver falha na validação das informações do cadastro, o sistema notifica o usuário sobre os campos inválidos.

**6. Pré-condições**

6.1. O sistema está operacional.

**7. Pós-condições**

7.1. O usuário está autenticado no sistema.

7.2. As informações do cadastro e as contas bancárias associadas foram registradas no sistema.

**8. Pontos de extensão**

8.1. Não há pontos de extensão definidos para este caso de uso.

**9. Requisitos especiais**

8.1. O sistema deve garantir a segurança das informações do usuário durante o cadastro e login.

**10. Informações adicionais**

- Nenhuma informação adicional fornecida.



## Histórico de versão

| Versão  | Autor| Descrição | Data |
| :---: | :----: | :-------: | :---: |
| 1.0| Juan Pablo |  Declaração dos Casos de Uso | 06/11 |