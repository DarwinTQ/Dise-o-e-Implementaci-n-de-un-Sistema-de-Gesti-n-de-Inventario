BEGIN
    EXECUTE IMMEDIATE 'DROP TRIGGER ubicaciones_trg';
EXCEPTION
    WHEN OTHERS THEN NULL;
END;
/
BEGIN
    EXECUTE IMMEDIATE 'DROP SEQUENCE ubicaciones_seq';
EXCEPTION
    WHEN OTHERS THEN NULL;
END;
/
BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE ubicaciones_productos CASCADE CONSTRAINTS';
EXCEPTION
    WHEN OTHERS THEN NULL;
END;
/
BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE transacciones CASCADE CONSTRAINTS';
EXCEPTION
    WHEN OTHERS THEN NULL;
END;
/
BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE ubicaciones CASCADE CONSTRAINTS';
EXCEPTION
    WHEN OTHERS THEN NULL;
END;
/
BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE productos CASCADE CONSTRAINTS';
EXCEPTION
    WHEN OTHERS THEN NULL;
END;
/
BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE almacenes CASCADE CONSTRAINTS';
EXCEPTION
    WHEN OTHERS THEN NULL;
END;
/

CREATE SEQUENCE ubicaciones_seq START WITH 1 NOCACHE;

CREATE TABLE almacenes (
    id_almacen NUMBER PRIMARY KEY,
    nombre VARCHAR2(100) NOT NULL,
    ubicacion VARCHAR2(200) NOT NULL
);

CREATE TABLE productos (
    id_producto NUMBER PRIMARY KEY,
    nombre VARCHAR2(100) NOT NULL,
    descripcion VARCHAR2(255) NOT NULL,
    precio NUMBER(10, 2) NOT NULL,
    stock_minimo NUMBER NOT NULL
);

CREATE TABLE ubicaciones (
    id_ubicacion NUMBER PRIMARY KEY,
    id_almacen NUMBER NOT NULL,
    seccion VARCHAR2(50),
    estante VARCHAR2(50),
    CONSTRAINT ubicaciones_almacenes_fk FOREIGN KEY (id_almacen)
        REFERENCES almacenes (id_almacen)
);

CREATE TABLE transacciones (
    id_transaccion NUMBER PRIMARY KEY,
    id_producto NUMBER NOT NULL,
    id_almacen NUMBER NOT NULL,
    fecha DATE NOT NULL,
    tipo VARCHAR2(10) NOT NULL,
    cantidad NUMBER NOT NULL,
    CONSTRAINT transacciones_productos_fk FOREIGN KEY (id_producto)
        REFERENCES productos (id_producto),
    CONSTRAINT transacciones_almacenes_fk FOREIGN KEY (id_almacen)
        REFERENCES almacenes (id_almacen)
);

CREATE TABLE ubicaciones_productos (
    id_ubicacion NUMBER NOT NULL,
    id_producto NUMBER NOT NULL,
    PRIMARY KEY (id_ubicacion, id_producto),
    CONSTRAINT ubicaciones_productos_ubicaciones_fk FOREIGN KEY (id_ubicacion)
        REFERENCES ubicaciones (id_ubicacion),
    CONSTRAINT ubicaciones_productos_productos_fk FOREIGN KEY (id_producto)
        REFERENCES productos (id_producto)
);

CREATE OR REPLACE TRIGGER ubicaciones_trg
BEFORE INSERT ON ubicaciones
FOR EACH ROW
WHEN (NEW.id_ubicacion IS NULL)
BEGIN
    :NEW.id_ubicacion := ubicaciones_seq.NEXTVAL;
END;
/


