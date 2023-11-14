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

```markdown
# Especificação de Caso de Uso: CDU-01 Gerenciar casos de Usuário

| Número do Caso de Uso | CDU-01 |
| --- | --- |
| **Nome do Caso de Uso** | Gerenciar casos de Usuário |
| **Versão** | 1.0 |
| **Data de Criação** | DD/MM/AAAA |
| **Responsável** | Equipe de Desenvolvimento |

## 1. Breve Descrição

Este caso de uso permite que o usuário realize operações relacionadas à gestão de seu perfil, incluindo o cadastro, login e o gerenciamento de até três contas bancárias associadas.

## 2. Fluxo Básico de Eventos

| Passo | Descrição |
| --- | --- |
| 2.1 | O usuário acessa o sistema. |
| 2.2 | O usuário escolhe a opção de cadastrar um novo usuário (RF1). |
| 2.3 | O sistema solicita as informações necessárias para o cadastro do usuário. |
| 2.4 | O usuário fornece os dados necessários. |
| 2.5 | O sistema valida as informações e cadastra o usuário. |
| 2.6 | O usuário escolhe a opção de fazer login (RF2). |
| 2.7 | O sistema solicita as credenciais do usuário. |
| 2.8 | O usuário fornece as credenciais e o sistema valida. |
| 2.9 | O sistema autentica o usuário e o direciona para a área logada. |
| 2.10 | O usuário escolhe a opção de cadastrar conta bancária (RF3). |
| 2.11 | O sistema solicita as informações da conta bancária. |
| 2.12 | O usuário fornece os dados necessários. |
| 2.13 | O sistema valida as informações e associa a conta bancária ao usuário. |

## 3. Fluxos Alternativos

### 3.1 Área de Funcionalidade: Cadastro de Usuário

#### 3.1.1 A1 Primeiro Fluxo Alternativo

##### 3.1.1.1 Um Subfluxo Alternativo

- Se as informações fornecidas pelo usuário no cadastro forem inválidas, o sistema exibe uma mensagem de erro.

#### 3.1.2 A2 Segundo Fluxo Alternativo

- Se o usuário já possuir uma conta, ele pode optar por fazer login em vez de cadastrar um novo usuário.

### 3.2 Outra Área de Funcionalidade: Cadastro de Conta Bancária

#### 3.2.1 AN Outro Fluxo Alternativo

- Se as informações da conta bancária fornecidas forem inválidas, o sistema notifica o usuário e não realiza o cadastro.

## 4. Fluxos de Exceção

| Número | Fluxo de Exceção | Descrição |
| --- | --- | --- |
| 4.1 | FE1 | Se houver falha na autenticação durante o login, o sistema notifica o usuário e oferece opções para recuperação de senha. |
| 4.2 | FE2 | Se houver falha na validação das informações do cadastro, o sistema notifica o usuário sobre os campos inválidos. |

## 5. Pré-Condições

| Número | Descrição |
| --- | --- |
| 5.1 | O sistema está operacional. |
| 5.2 | Não há restrições específicas para o cadastro de novos usuários. |

## 6. Pós-Condições

| Número | Descrição |
| --- | --- |
| 6.1 | O usuário está autenticado no sistema. |
| 6.2 | As informações do cadastro e as contas bancárias associadas foram registradas no sistema. |

## 7. Pontos de Extensão

| Número | Nome do Ponto de Extensão | Descrição |
| --- | --- | --- |
| 7.1 | - | Não há pontos de extensão definidos para este caso de uso. |

## 8. Requisitos Especiais

| Número | Descrição |
| --- | --- |
| 8.1 | O sistema deve garantir a segurança das informações do usuário durante o cadastro e login. |

## 9. Informações Adicionais

- Nenhuma informação adicional fornecida.
```

Este é o formato em tabela para MKDocs do Caso de Uso CDU-01. Se precisar de mais alguma coisa, estou à disposição!

## Histórico de versão

| Versão  | Autor| Descrição | Data |
| :---: | :----: | :-------: | :---: |
| 1.0| Juan Pablo |  Declaração dos Casos de Uso | 06/11 |