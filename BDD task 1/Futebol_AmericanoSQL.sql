DROP DATABASE IF EXISTS meu_time_futebol;
CREATE DATABASE meu_time_futebol;
USE meu_time_futebol;
CREATE TABLE Time (
    ID_Time INT AUTO_INCREMENT PRIMARY KEY,
    Nome_Time VARCHAR(100) NOT NULL,
    Cidade VARCHAR(100) NOT NULL,
    Estado VARCHAR(100) NOT NULL,
    Estádio VARCHAR(100) NOT NULL
);

CREATE TABLE Jogador (
    ID_Jogador INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Posição VARCHAR(50) NOT NULL,
    Altura DECIMAL(4,2) NOT NULL,
    Peso DECIMAL(5,2) NOT NULL,
    Data_Nascimento DATE NOT NULL,
    ID_Time INT,
    FOREIGN KEY (ID_Time) REFERENCES Time(ID_Time)
);

CREATE TABLE Técnico (
    ID_Técnico INT AUTO_INCREMENT PRIMARY KEY,
    Nome_Técnico VARCHAR(100) NOT NULL,
    Experiência INT NOT NULL,
    Especialidade VARCHAR(50) NOT NULL,
    ID_Time INT,
    FOREIGN KEY (ID_Time) REFERENCES Time(ID_Time)
);

CREATE TABLE Partida (
    ID_Partida INT AUTO_INCREMENT PRIMARY KEY,
    Data DATE NOT NULL,
    Local VARCHAR(100) NOT NULL
);

CREATE TABLE Partida_Time (
    ID_Partida INT,
    ID_Time INT,
    Resultado VARCHAR(50),
    PRIMARY KEY (ID_Partida, ID_Time),
    FOREIGN KEY (ID_Partida) REFERENCES Partida(ID_Partida),
    FOREIGN KEY (ID_Time) REFERENCES Time(ID_Time)
);

CREATE TABLE Estatísticas (
    ID_Estatísticas INT AUTO_INCREMENT PRIMARY KEY,
    ID_Jogador INT,
    ID_Partida INT,
    Jardas_Corridas INT,
    Passes_Completos INT,
    Touchdowns INT,
    FOREIGN KEY (ID_Jogador) REFERENCES Jogador(ID_Jogador),
    FOREIGN KEY (ID_Partida) REFERENCES Partida(ID_Partida)
);
SHOW TABLES;