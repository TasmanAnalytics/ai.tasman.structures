-- AUTO-GENERATED BY igluctl DO NOT EDIT
-- Generator: igluctl 0.2.0
-- Generated: 2017-12-10 18:55

CREATE SCHEMA IF NOT EXISTS atomic;

CREATE TABLE IF NOT EXISTS atomic.ai_tasman_subscription_renewed_1 (
    "schema_vendor"     VARCHAR(128)  ENCODE RUNLENGTH NOT NULL,
    "schema_name"       VARCHAR(128)  ENCODE RUNLENGTH NOT NULL,
    "schema_format"     VARCHAR(128)  ENCODE RUNLENGTH NOT NULL,
    "schema_version"    VARCHAR(128)  ENCODE RUNLENGTH NOT NULL,
    "root_id"           CHAR(36)      ENCODE RAW       NOT NULL,
    "root_tstamp"       TIMESTAMP     ENCODE LZO       NOT NULL,
    "ref_root"          VARCHAR(255)  ENCODE RUNLENGTH NOT NULL,
    "ref_tree"          VARCHAR(1500) ENCODE RUNLENGTH NOT NULL,
    "ref_parent"        VARCHAR(255)  ENCODE RUNLENGTH NOT NULL,
    "local_currency"    VARCHAR(10)   ENCODE LZO,
    "local_price"       VARCHAR(4096) ENCODE LZO,
    "renewal_timestamp" VARCHAR(4096) ENCODE LZO,
    "sku"               VARCHAR(1000) ENCODE LZO,
    "usd_price"         VARCHAR(4096) ENCODE LZO,
    FOREIGN KEY (root_id) REFERENCES atomic.events(event_id)
)
DISTSTYLE KEY
DISTKEY (root_id)
SORTKEY (root_tstamp);

COMMENT ON TABLE atomic.ai_tasman_subscription_renewed_1 IS 'iglu:ai.tasman/subscription_renewed/jsonschema/1-0-0';
