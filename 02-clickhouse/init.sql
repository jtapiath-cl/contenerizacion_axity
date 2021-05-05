CREATE DATABASE IF NOT EXISTS consumo;

CREATE TABLE IF NOT EXISTS consumo.lecturas
(
    meter String,
    tech String,
    servicio String,
    empresa String,
    date_ts String,
    read_timestamp DateTime,
    kw Float64
)
ENGINE = MergeTree()
ORDER BY date_ts
PARTITION BY date_ts
;

CREATE TABLE IF NOT EXISTS consumo.cliente
(
    meter String,
    tech String,
    servicio String,
    empresa String,
    kwh_cliente Float64,
    rut_cliente String,
    nombre_servicio String,
    direccion_cliente String,
    comuna String,
    localidad String,
    categoria String,
    tarifa String,
    grupo_tarifario String,
    grupo Int64,
    factor_facturacion Float32,
    nivel_contactabilidad String,
    lecturas_mi Int32,
    fecha_instalacion DateTime,
    piloto_mvp1 String
)
ENGINE = MergeTree()
ORDER BY grupo
PARTITION BY grupo
;

CREATE TABLE IF NOT EXISTS consumo.predicciones
(
    meter String,
    tech String,
    servicio String,
    empresa String,
    rut_cliente String,
    nombre_servicio String,
    comuna String,
    y Float64,
    ds DateTime,
    yhat Float64,
    yhat_lower Float64,
    yhat_upper Float64,
    trend_lower Float64,
    trend_upper Float64,
    date_ts String
)
ENGINE = MergeTree()
ORDER BY servicio
PARTITION BY servicio
;

CREATE USER IF NOT EXISTS usr_consumo
IDENTIFIED WITH plaintext_password BY 'complex_password_01#@';

GRANT
    SELECT,
    INSERT,
    ALTER,
    CREATE,
    DROP,
    TRUNCATE,
    dictGet
ON consumo.*
TO usr_consumo
;
