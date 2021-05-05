CREATE TABLE IF NOT EXISTS transac_table
(
    row_id INT NOT NULL,
    transaction_number BIGINT,
    account_id TEXT,
    transaction_ts TIMESTAMP,
    amount MONEY,
    transaction_status SMALLINT
);

CREATE TABLE IF NOT EXISTS accounts
(
    account_id TEXT NOT NULL PRIMARY KEY,
    account_status SMALLINT,
    account_balance MONEY,
    client_id BIGINT,
    branch_id TEXT
);

CREATE TABLE IF NOT EXISTS clients
(
    client_id TEXT NOT NULL PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    id_number TEXT,
    client_address TEXT
);

-- insertando clientes
INSERT INTO clients (client_id, first_name, last_name, id_number, client_address) VALUES
('123456789', 'Jorge', 'Mandru', '16798309-k', 'Calle 1, Santiago'),
('852963741', 'Carlos', 'Maximo', '8940301-9', 'Alameda 356, Providencia'),
('456321782', 'Estefania', 'Cespedes', '12643792-5', 'Infante 2301, Santiago')
;

-- insertando cuentas
INSERT INTO accounts(account_id, account_status, account_balance, client_id, branch_id) VALUES
('025653687', 1, 0, '456321782', '12'),
('002568715', 1, 0, '852963741', '12'),
('987654321', 1, 0, '123456789', '12'),
('000365459', 1, 0, '852963741', '12'),
('645238431', 1, 0, '456321782', '12')
;
