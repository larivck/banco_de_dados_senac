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

📚 Conteúdo Educacional – Comandos DDL e DML
🧩 1. O que é DDL? (Data Definition Language)

A DDL é a linguagem de definição de dados utilizada para criar, modificar e excluir estruturas dentro de um banco de dados.
Com ela, é possível criar bancos, tabelas e definir seus atributos (colunas).

✔ Principais comandos DDL
Comando    Função
CREATE    Cria bancos, tabelas e outros objetos
ALTER    Altera a estrutura de uma tabela já existente
DROP    Exclui bancos ou tabelas
TRUNCATE    Apaga rapidamente todos os registros de uma tabela
🏗️ Exemplos DDL utilizados no projeto SweetStore
1️⃣ Criando o banco de dados (CREATE DATABASE)
CREATE DATABASE SweetStore;
USE SweetStore;


Esse comando cria o banco onde todas as tabelas e dados serão armazenados.

---

2️⃣ Criando tabelas (CREATE TABLE)
Exemplo: Tabela Categorias
CREATE TABLE Categorias (
    CategoriaID INT AUTO_INCREMENT PRIMARY KEY,
    NomeCategoria VARCHAR(100) NOT NULL
);


Esse comando cria uma tabela para armazenar os tipos de doces vendidos.

Exemplo: Tabela Produtos
CREATE TABLE Produtos (
    ProdutoID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(150) NOT NULL,
    CategoriaID INT,
    Preco DECIMAL(10,2) NOT NULL,
    QuantidadeEstoque INT NOT NULL,
    Descricao VARCHAR(255),
    FOREIGN KEY (CategoriaID) REFERENCES Categorias(CategoriaID)
);


Aqui vemos o FOREIGN KEY, que liga produtos à categoria correspondente.

---

3️⃣ Alterando uma tabela (ALTER TABLE)

(Exemplo didático — não está no script original)

ALTER TABLE Produtos
ADD Peso VARCHAR(20);


Esse comando adicionaria uma nova coluna chamada "Peso" na tabela Produtos.

---

4️⃣ Excluindo uma tabela (DROP TABLE)

(Exemplo educacional)

DROP TABLE ItensVenda;


Remove completamente a tabela e seus dados.

🍬 2. O que é DML? (Data Manipulation Language)

A DML é a linguagem usada para manipular os dados dentro das tabelas já criadas.
Ou seja, são comandos que inserem, atualizam, removem ou consultam informações.

✔ Principais comandos DML
Comando    Função
INSERT    Insere novos dados
UPDATE    Atualiza valores existentes
DELETE    Remove registros
SELECT    Consulta e exibe dados
🍭 Exemplos DML usados no projeto SweetStore
1️⃣ Inserindo dados (INSERT INTO)
Inserindo categorias:
INSERT INTO Categorias (NomeCategoria)
VALUES ('Chocolates'), ('Balas'), ('Pirulitos'), ('Doces Gourmet');

Inserindo produtos:
INSERT INTO Produtos (Nome, CategoriaID, Preco, QuantidadeEstoque, Descricao)
VALUES
('Chocolate ao Leite 100g', 1, 7.50, 50, 'Chocolate cremoso.'),
('Bala de Morango', 2, 0.25, 500, 'Bala tradicional sabor morango.');

2️⃣ Atualizando informações (UPDATE)

(Exemplo educacional)

UPDATE Produtos
SET Preco = 8.00
WHERE ProdutoID = 1;


Esse comando altera o preço do produto com ID 1.

3️⃣ Excluindo dados (DELETE)

(Exemplo educacional)

DELETE FROM Produtos
WHERE ProdutoID = 2;


Remove o produto de ID 2 da tabela.

4️⃣ Consultando dados (SELECT)

(Exemplo prático)

SELECT Nome, Preco
FROM Produtos;


Esse comando lista o nome e o preço de todos os produtos cadastrados.

---

🎓 Resumo Final

DDL cria e organiza a estrutura do banco (tabelas, campos, relacionamentos).

DML manipula os dados que estão dentro dessa estrutura.

No projeto SweetStore, usamos CREATE TABLE, INSERT, FOREIGN KEY, entre outros.

Saber ambos é essencial para construir bancos de dados profissionais

---
