CREATE DATABASE IF NOT EXISTS analisis;

CREATE TABLE IF NOT EXISTS analisis.transacciones
(
    cuenta String,
    fecha DateTime,
    transacciones Int64,
    montos Float64
)
ENGINE=MergeTree()
ORDER BY fecha
PARTITION BY fecha
;

CREATE USER IF NOT EXISTS usuario_consumo
IDENTIFIED WITH plaintext_password BY 'mysecretpassword';

GRANT
    SELECT,
    INSERT,
    ALTER,
    CREATE,
    DROP,
    TRUNCATE,
    dictGet
ON analisis.*
TO usuario_consumo
;
