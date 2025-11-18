CREATE DATABASE SweetStore;
USE SweetStore;

CREATE TABLE Categorias (
    CategoriaID INT AUTO_INCREMENT PRIMARY KEY,
    NomeCategoria VARCHAR(100) NOT NULL
);

CREATE TABLE Produtos (
    ProdutoID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(150) NOT NULL,
    CategoriaID INT,
    Preco DECIMAL(10,2) NOT NULL,
    QuantidadeEstoque INT NOT NULL,
    Descricao VARCHAR(255),
    FOREIGN KEY (CategoriaID) REFERENCES Categorias(CategoriaID)
);
CREATE TABLE Clientes (
    ClienteID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(150) NOT NULL,
    Email VARCHAR(150),
    Telefone VARCHAR(20)
);

CREATE TABLE Vendas (
    VendaID INT AUTO_INCREMENT PRIMARY KEY,
    ClienteID INT,
    DataVenda DATETIME NOT NULL,
    ValorTotal DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
);

CREATE TABLE ItensVenda (
    ItemID INT AUTO_INCREMENT PRIMARY KEY,
    VendaID INT,
    ProdutoID INT,
    Quantidade INT NOT NULL,
    PrecoUnitario DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (VendaID) REFERENCES Vendas(VendaID),
    FOREIGN KEY (ProdutoID) REFERENCES Produtos(ProdutoID)
);

INSERT INTO Categorias (NomeCategoria)
VALUES ('Chocolates'), ('Balas'), ('Pirulitos'), ('Doces Gourmet');

INSERT INTO Produtos (Nome, CategoriaID, Preco, QuantidadeEstoque, Descricao)
VALUES
('Chocolate ao Leite 100g', 1, 7.50, 50, 'Chocolate cremoso.'),
('Bala de Morango', 2, 0.25, 500, 'Bala tradicional sabor morango.'),
('Pirulito Colorido', 3, 1.50, 200, 'Pirulito grande e multicolorido.'),
('Brigadeiro Gourmet', 4, 4.00, 80, 'Brigadeiro feito com chocolate belga.');

INSERT INTO Clientes (Nome, Email, Telefone)
VALUES
('Ana Souza', 'ana@gmail.com', '1199999-0000'),
('Carlos Lima', 'carlos@gmail.com', '1198888-0000');

INSERT INTO Vendas (ClienteID, DataVenda, ValorTotal)
VALUES (1, NOW(), 15.50);

INSERT INTO ItensVenda (VendaID, ProdutoID, Quantidade, PrecoUnitario)
VALUES
(1, 1, 1, 7.50),
(1, 4, 2, 4.00);
