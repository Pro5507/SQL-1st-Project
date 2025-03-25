CREATE TABLE IF NOT EXISTS SALESMAN(
    SALESMAN_ID TEXT PRIMARY KEY,
    NAME TEXT,
    CITY TEXT,
    COMISSION REAL
);

INSERT INTO SALESMAN (SALESMAN_ID, NAME, CITY, COMISSION) VALUES
    ('5001', 'JAMES HOOG', 'NEW YORK', 0.15)
    ('5002', 'NAIL KNITE', 'PARIS', 0.13)
    ('5005', 'PIT ALEX', 'LONDON', 0.11);

CREATE TABLE IF NOT EXISTS CUSTOMER (
    CUSTOMER_ID TEXT,
    CUST_NAME TEXT PRIMARY KEY,
    CITY TEXT,
    GRADE INTEGER,
    SALESMAN_ID TEXT,
    FOREIGN KEY (SALESMAN_ID) REFERENCES SALESMAN(SALESMAN_ID)
);

INSERT INTO CUSTOMER (CUSTOMER_ID, CUST_NAME, CITY, GRADE, SALESMAN_ID) VALUES
    ('3002', 'NICK RIMANDO', 'NEW YORK', 100, '5001'),
    ('3007', 'BRAD DAVIS', 'NEW YORK', 200, '5001')
    ('3005', 'GRAHM ZUSI', 'CALIFORNIA', 200, '5002');

CREATE TABLE IF NOT EXISTS ORDERS (
    ORDER_NO TEXT PRIMARY KEY,
    PURNCH_AMT REAL,
    ORD_DATE TEXT,
    CUSTOMER_ID TEXT,
    SALESMAN_ID TEXT,
    FOREIGN KEY (CUSTOMER_ID) REFERENCES  CUSTOMER (CUSTOMER_ID),
    FOREIGN KEY (SALESMAN_ID) REFERENCES
    SALESMAN(SALESMAN_ID)
);

INSERT INTO ORDERS (ORD_NO, PURCH_AMT, ORD_DATE, CUSTOMER_ID, SALESMAN_ID) VALUES
    ('7001', 150.5, '2012-10-05', '3005', '5002'),
    ('7009', 270.65, '2012-09-10', '3005', '5001')
    ('7002', 65.26, '2012-10-05', '3002', '5003');