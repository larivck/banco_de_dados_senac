🍬 SweetStore – Projeto de Banco de Dados (Senac)

Este repositório apresenta o desenvolvimento completo do projeto da disciplina de Banco de Dados do Senac.
O objetivo foi criar, modelar e implementar um banco de dados para uma loja de doces fictícia chamada SweetStore, utilizando comandos DDL e DML, além de aplicar conceitos essenciais de modelagem.

---

🎯 Objetivos do Projeto

Aplicar os fundamentos de modelagem de dados

Criar tabelas e estruturas utilizando comandos DDL (Data Definition Language)

Inserir e manipular dados utilizando DML (Data Manipulation Language)

Compreender e implementar relacionamentos entre entidades

Organizar um repositório profissional seguindo boas práticas com GitHub

---

📚 Principais Aprendizados

Durante o desenvolvimento do projeto, pude aprender e praticar:

✔ Como estruturar um banco de dados real

✔ Como criar e manipular dados utilizando SQL

✔ Como representar visualmente o banco por meio de MER/DER

✔ Como organizar um projeto no GitHub de forma clara e profissional

---

▶️ Como Executar o Script SQL

Para executar o arquivo sweet_store.sql

Abra seu editor SQL preferido (MySQL Workbench, DBeaver, phpMyAdmin etc.)

Importe ou abra o arquivo sweet_store.sql

Execute o script completo para:

Criar o banco de dados SweetStore

Criar todas as tabelas

Popular os dados iniciais

Pronto! O banco estará disponível para consultas, testes e manipulação.

---

💡 Sobre o Projeto

Este projeto foi desenvolvido como parte da disciplina de Banco de Dados, com foco na prática de criação e manipulação de estruturas relacionais. A loja fictícia SweetStore serviu como contexto para a construção de um banco completo, simulando um cenário de vendas reais.

---

📚 Comandos DDL e DML – Documentação Técnica
✔ O que é DDL? (Data Definition Language)

A DDL é um conjunto de comandos SQL responsável por definir e gerenciar a estrutura de um banco de dados, permitindo criar, alterar ou remover tabelas e outros objetos.

Principais comandos DDL
| Comando      | Função                                                                       |
| ------------ | ---------------------------------------------------------------------------- |
| **CREATE**   | Cria bancos de dados, tabelas, índices e outros objetos                      |
| **ALTER**    | Modifica a estrutura de uma tabela existente                                 |
| **DROP**     | Remove objetos do banco (tabelas, bancos, etc.)                              |
| **TRUNCATE** | Remove rapidamente todos os registros de uma tabela (sem apagar a estrutura) |

Exemplos DDL utilizados no projeto SweetStore
✔ Criando o banco de dados

CREATE DATABASE SweetStore;

✔ Selecionando o banco para uso
USE SweetStore;

✔ Criando tabelas
CREATE TABLE Categorias (
    CategoriaID INT AUTO_INCREMENT PRIMARY KEY,
    NomeCategoria VARCHAR(100) NOT NULL
);

# Tabela Produtos
CREATE TABLE Produtos (
    ProdutoID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(150) NOT NULL,
    CategoriaID INT,
    Preco DECIMAL(10,2) NOT NULL,
    QuantidadeEstoque INT NOT NULL,
    Descricao VARCHAR(255),
    FOREIGN KEY (CategoriaID) REFERENCES Categorias(CategoriaID)
);

✔Alterando uma tabela

ALTER TABLE Produtos

ADD Peso VARCHAR(20);

✔ Excluindo uma tabela

DROP TABLE ItensVenda;

---

✔ O que é DML? (Data Manipulation Language)
A DML é responsável por manipular os dados existentes nas tabelas. Ela permite inserir, atualizar, consultar e excluir registros.
Principais comandos DML

| Comando    | Função                        |
| ---------- | ----------------------------- |
| **INSERT** | Insere novos registros        |
| **UPDATE** | Atualiza registros existentes |
| **DELETE** | Remove registros              |
| **SELECT** | Consulta dados                |


Exemplos DML utilizados no projeto SweetStore
✔ Inserindo dados
Categorias
INSERT INTO Categorias (NomeCategoria)
VALUES
('Chocolates'),
('Balas'),
('Pirulitos'),
('Doces Gourmet');

INSERT INTO Produtos (Nome, CategoriaID, Preco, QuantidadeEstoque, Descricao)
VALUES
('Chocolate ao Leite 100g', 1, 7.50, 50, 'Chocolate cremoso.'),
('Bala de Morango', 2, 0.25, 500, 'Bala tradicional sabor morango.');

✔ Atualizando dados

UPDATE Produtos
SET Preco = 8.00
WHERE ProdutoID = 1;

✔ Excluindo dados

DELETE FROM Produtos
WHERE ProdutoID = 2;

✔ Consultando dados

SELECT Nome, Preco
FROM Produtos;

📌 Resumo Final

DDL → Cria e organiza a estrutura do banco de dados (tabelas, colunas, relacionamentos).

DML → Manipula os dados armazenados nessas estruturas.

No projeto SweetStore, utilizamos comandos essenciais como
CREATE TABLE, INSERT, FOREIGN KEY, UPDATE, SELECT, entre outros.

Saber ambos é essencial para construir bancos de dados profissionais
