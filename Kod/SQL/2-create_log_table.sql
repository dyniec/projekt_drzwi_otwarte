DROP TABLE IF EXISTS logs;
CREATE TABLE logs (
    type VARCHAR(15) NOT NULL CHECK (type IN ('add','open','reject','error','unknown')),
    message VARCHAR(150),
    timestamp DATE DEFAULT (datetime('now','localtime'))
    );