CREATE TABLE upload_logs (
    id BIGINT AUTO_INCREMENT NOT NULL,
    name VARCHAR NOT NULL,
    creation_date DATE,
    size BIGINT NOT NULL,
    upload_date DATE NOT NULL
);

ALTER TABLE upload_logs ADD CONSTRAINT pk_upload_logs UNIQUE(id);

CREATE TABLE opportunities (
    opportunity_id      UUID NOT NULL,
    booking_date        DATE NOT NULL,
    booking_type        ENUM('new', 'renewal', 'expansion') NOT NULL,
    customer_name       VARCHAR(100) NOT NULL,
    total               DECIMAL(20, 2) NOT NULL,
    account_executive   VARCHAR(100) NOT NULL,
    sales_organization  VARCHAR(100) NOT NULL,
    team                ENUM('NORTH', 'SOUTH', 'EAST', 'WEST') NOT NULL,
    product             VARCHAR(50) NOT NULL,
    renewable           BOOLEAN NOT NULL
);

ALTER TABLE opportunities ADD CONSTRAINT pk_opportunities UNIQUE(opportunity_id);