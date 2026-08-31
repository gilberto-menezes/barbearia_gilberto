# 💈 Barbearia Gilberto - Sistema de Gerenciamento

Projeto de banco de dados feito em MySQL para controle de uma barbearia.

## Tabelas do projeto

Criei 3 tabelas na seguinte ordem:

1. servicos - armazena os serviços (id, nome_servico, preco)
2. clientes - armazena os clientes (id, nome, sobrenome, endereco)
3. agendamentos - faz o agendamento (id, data_agendamento, clientes_id, servicos_id)

A tabela agendamentos possui chave estrangeira (FOREIGN KEY) ligada a clientes e servicos.

## Como rodar o projeto

1. Baixar o arquivo barbearia_gilberto.sql
2. Abrir no MySQL Workbench
3. Executar o script para criar o banco e as tabelas
4. Usar o comando USE barbearia_gilberto;

## 🛠️ Tecnologias usadas

- MySQL
- MySQL Workbench

## 👨‍💻 Autor: Gilberto Menezes
