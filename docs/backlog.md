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
                                    
## Requisitos Não-Funcionais
O framework utilizado para a declaração de requisitos não funcionais foi o URPS+
|ID| Categoria | Declaração |
|----| -----| ------|
|RNF1| Implementação| App Mobile Android|
|RNF2| Disponibilidade| App Online |
|RNF3| Usabilidade| Compatibilidade com o modo retrato e paisagem |

## SAFe                                    
<table>
    <thead>
        <tr>
            <th>Épicos</th>
            <th>Capacidades</th>
            <th>Funcionalidades</th>
            <th>Histórias de Usuário</th>
        </tr>
    </thead>
    <tbody>
    <tr>
        <td rowspan="37">Gerenciamento de Despesas e Ganhos</td>
        <td rowspan="8">Transações de Despesa</td>
        <td rowspan="4">Gerir processos de despesas</td>
        <td>Eu, como usuário, desejo ver meu gasto individual, para que eu possa controlar meus gastos </td>
    </tr>
    <tr>
        <td>Eu, como usuário, desejo registrar despesas, para que eu possa ter acesso às despesas</td>
    </tr>
    <tr>
    </tr>
    <tr>
    </tr>
    <tr>
        <td rowspan="4">Categorizar despesas </td>
        <td>Eu, como usuário, desejo categorizar despesas, para que eu possa filtrar as despesas</td>
    </tr>
    <tr>
        <td>Eu, como usuário, desejo criar categoria de despesas adicionais, para que eu possa filtrar os despesas adicionais</td>
    </tr>
    <tr>
    </tr>
    <tr>
    </tr>
    <tr>
        <td rowspan="14">Transações de Ganhos</td>
        <td rowspan="4">Categorizar ganhos</td>
        <td>Eu, como usuário, desejo categorizar ganhos, para que eu possa filtrar os ganhos</td>
    </tr>
    <tr>
        <td>Eu, como usuário, desejo criar categoria de ganhos, para que eu possa filtrar os ganhos adicionais</td>
    </tr>
    <tr>
    </tr>
    <tr>
    </tr>
    <tr>
        <td rowspan="2">Gerir Processos de ganhos</td>
        <td>Eu, como usuário, desejo registrar meu salário, para que eu tenha um valor fixo a gastar</td>
    </tr>
    <tr>
        <td>Eu, como usuário, desejo atualizar o saldo das minhas contas, para que eu possa saber em, tempo real, os recursos financeiros disponíveis</td>
    </tr>
    <tr>
    </tr>
    </tbody>
    <tbody>
    <tr>
        <td rowspan="37">Análise Financeira</td>
        <td rowspan="8">Definir Planejamento</td>
        <td rowspan="4">Gerir Planejamentos</td>
        <td>Eu, como usuário, desejo definir teto de gasto para cada categoria, para que eu controle gastos específicos </td>
    </tr>
    <tr>
        <td>Eu, como usuário, desejo definir um planejamento financeiro com metas, para que eu possa melhor administrar meus recursos financeiros</td>
    </tr>
    <tr>
        <td>Eu, como usuário, desejo acompanhar progresso em direção as metas do planejamento, para que eu possa poupar recursos financeiros</td>
    </tr>
    <tr>
    </tr>
    <tr>
        <td rowspan="4">Notificação de Planejamento </td>
        <td>Eu, como usuário, desejo ser notificado quando 80% perto do teto de gastos. para que eu não exceda o limite de gastos</td>
    </tr>
    <tr>
        <td>Eu, como usuário, desejo ser notificado 5 dias antes da data do planejamento, para que eu não exceda o limite da data.</td>
    </tr>
    <tr>
    </tr>
    <tr>
    </tr>
    <tr>
        <td rowspan="14">Estatísticas</td>
        <td rowspan="4">Gráfico de ganhos e despesas</td>
        <td>Eu, como usuário, desejo ver gráficos de barras dos gastos por categoria, para que eu tenha conhecimentos dos meu gastos ao final do mês</td>
    </tr>
    <tr>
        <td>Eu, como usuário, desejo ver gráficos de barras dos ganhos por categoria, para que eu tenha conhecimento dos meu ganhos mensais</td>
    </tr>
    <tr>
        <td>Eu, como usuário, desejo ver gráfico circular do balanço mensal, para que eu tenha conhecimentos dos meu gastos ao final do mês</td>
    </tr>
    <tr>
    </tr>
    </tbody>
    <tbody>
    <tr>
        <td rowspan="37">Gerenciamento de Usuários e Contas Bancárias</td>
        <td rowspan="8">Informações de Usuário</td>
        <td rowspan="4">Gerir cadastro de informações de Usuário</td>
        <td>Eu, como usuário, desejo criar minha conta, para que eu possa criar um perfil </td>
    </tr>
    <tr>
        <td>Eu, como usuário, desejo atualizar as informações da minha conta de usuário, para que eu possa modificar meu perfil</td>
    </tr>
    <tr>
    </tr>
    <tr>
    </tr>
    <tr>
        <td rowspan="4">Login e Logoff </td>
        <td>Eu, como usuário, desejo logar na minha conta, para que eu possa acessar meu perfil</td>
    </tr>
    <tr>
        <td>Eu, como usuário, desejo atualizar as informações de login, para que eu possa modificar meu acesso</td>
    </tr>
    <tr>
    </tr>
    <tr>
    </tr>
    <tr>
        <td rowspan="14">Informações de Contas Bancárias</td>
        <td rowspan="4">Gerir cadastro de informações de Contas bancárias</td>
        <td>Eu, como usuário, desejo cadastrar minhas contas dos bancos, para que eu possa rastrear minhas depesas</td>
    </tr>
    <tr>
        <td>Eu, como usuário, desejo atualizar as informações da minha conta do banco, para que eu possa modificar meu perfil</td>
    </tr>
    <tr>
    </tr>
    </tbody>
</table>
                                                                                                                                                                                                                                          
## Critério de priorização
Os campos de valor de négocio, viabilidade e complexidade podem variar de 0 a 5, sendo 0 o valor mínimo e 5 o valor máximO. A História de usuário será priorizada se seu MVP for maior ou igual 6 (MVP >= 6).
MVP = Valor de negócio + Viabilidade - Complexidade
                                                                                                  

## Priorização de Backlog

| ID | Descrição                                        | Valor de negócio | Viabilidade | Complexidade | Pontuação | MVP |
| :----: | ------------------------------------------- | :--------------: | :---------: | :----------: | :-------: | :------: |
|  US01  | Eu, como usuário, desejo criar minha conta, para que eu possa criar um perfil            |        5         |      5      |      2       |     8     | ✅ |
|  US02  | Eu, como usuário, desejo logar na minha conta, para que eu possa acessar meu perfil     |        5        |      5     |      2      |     8    |✅|
|  US03  | Eu, como usuário, desejo consultar meu gasto individual, para que eu possa controlar meus gastos  |   5   |      5   |    2    |     8  |✅ |
|  US04  | Eu, como usuário, desejo registrar despesas, para que eu possa ter acesso as despesas  |        5         |     5      |    2       |    8     |✅ |
|  US05  | Eu, como usuário, desejo registrar meu salário, para que eu tenha um valor fixo a gastar  |     5          |   5       |      2       |  8    |✅ |
|  US06  | Eu, como usuario, desejo definir um planejamento de gastos para me organizar no período de planejamento  |      5 |       5 |      4 | 6    |✅ |
|  US07  | Eu, como usuário, desejo cadastrar minhas reservas (ex.:contas,dinheiro físico em carteiro), para que eu possa rastrear minhas depesas |    5 |   5      |   3   |    7    |✅ |
|  US08  | Eu, como usuário, desejo atualizar o saldo das minhas contas, para que eu possa saber em, tempo real, os recursos financeiros disponíveis                          |        5         |      5      |      2       |     8     |✅|
|  US09  | Eu, como usuário, desejo criar um novo tipo categoria de despesas, para que eu possa filtrar os despesas adicionais                    |        5         |      5      |      5       |     5    |❌|
|  US10  | Eu, como usuário, desejo ser notificado 5 dias antes da data do planejamento, para que eu não exceda o limite da data.                |        5         |      5      |      5       |     5     |❌ |
|  US11  | Eu, como usuário, desejo categorizar despesas, para que eu possa filtrar as despesas               |        5         |      5      |      4       |     6     |✅ |
|  US12  | Eu, como usuário, desejo definir teto de gasto para cada categoria, para que eu controle gastos específicos             |        5         |      5      |      4       |     6     |✅ |
|  US13  | Eu, como usuário, desejo acompanhar progresso em direção as metas do planejamento, para que eu possa poupar recursos   financeiros  |        5         |      5      |      4       |     6     |✅ |
|  US14  | Eu, como usuário, desejo ser notificado quando 80% perto do teto de gastos. para que eu não exceda o limite de gastos |        5         |      5      |      5       |     5     |❌ |
|  US15  | Eu, como usuário, desejo ver gráfico circular do balanço mensal, para que eu tenha conhecimentos dos meu gastos ao final do mês                 |        5   |    5      |       4      |     6     | ✅|
|  US16  | Eu, como usuário, desejo categorizar ganhos, para que eu possa filtrar os ganhos   |        3         |      5      |      4       |     4     | ❌|
|  US17  | Eu, como usuário, desejo atualizar as informações da minha conta de usuário, para que eu possa modificar meu perfil   |        5         |      5      |      3       |     7     |✅ |
| US18 | como usuário, desejo ver gráficos de barras dos gastos por categoria, para que eu tenha conhecimento dos meu ganhos mensais em cada categoria de gasto                |        5         |      5      |      4      |     6     |✅ |
| US19 | como usuário, desejo ver gráficos de barras dos ganhos por categoria, para que eu tenha conhecimento dos meu ganhos mensais                 |        3         |      5      |      4       |     4     |❌ |



## Alinhamento com os objetivos

|Objetivo|ID|
| ------ | ------ |
| aprimorar o controle financeiro do usuário | US03, US04, US05, US06, US07, US10, US11, US12, US13  |
| relatando gastos excessivos | US03, US04, US10 |
| garantindo a análise de suas finanças| US13, US15, US18 |


## Histórico de versão

| Versão  | Autor| Descrição | Data |
| :---: | :----: | :-------: | :---: |
| 1.0| Jefferson, Tiago, Juan e João |  Adicionando Backlog MVP com Priorização | 25/10 |
| 1.1| João Lucas | Adicionando tabela de requisitos funcionais e atualização de requisitos não funcionais| 26/10 |