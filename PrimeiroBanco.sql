//Todos os tipos de declarações do SQL DDL

// ***** CREATE ***********

//Criando tabela
CREATE TABLE myfirsttable (

   emp_name varchar2(20),
    gender char(10),
    sal number(10),
    DOB date
);
//Vendo a tabela
SELECT * FROM myfirsttable;
//DESC <nome_tabela> mostra o código usado para criar a tabela
DESC myfirsttable

// ***** ALTER ***********

//Adicionar coluna em uma tabela já existente
// ALTER TABLE <nome_tabela> ADD <nome_coluna> <tipo_dado>
ALTER TABLE myfirsttable add emp_id number(10);
//Modificar o tipo de dado em uma tabela já existente
// ALTER TABLE <nome_tabela> Modify Column <nome_tabela> <tipo_dado>
ALTER TABLE myfirsttable modify emp_id varchar2(10);
//Renomear coluna em uma tabela já existente
// ALTER TABLE <nome_tabela> Rename <nome_coluna_atual> To <nome_coluna_novo>
ALTER TABLE myfirsttable rename column emp_id to employee_id;

//Remover coluna em uma tabela já existente
// ALTER TABLE <nome_tabela> Drop <nome_coluna>
ALTER TABLE myfirsttable drop column employee_id

// ***** RENAME ***********

// RENAME <nome_tabela_existente> to <nome_tabela_nova>
RENAME myfirsttable to employer;
DESC myfirsttable;
DESC employer;
SELECT * FROM employer;
// ***** DROP ***********

// DROP TABLE <nome_tabela>
DROP TABLE employer;


// ***** TRUNCATE ***********
//Ele tranca os dados dentro da tabela

//TRUNCATE TABLLE <nome_tabela>
TRUNCATE TABLE employer;
