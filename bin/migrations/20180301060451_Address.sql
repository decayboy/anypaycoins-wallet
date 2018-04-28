-- +goose Up
-- SQL in section 'Up' is executed when this migration is applied

CREATE TABLE address
(
  address VARCHAR (60) NOT NULL,
  currency VARCHAR(3) NOT NULL,
  password VARCHAR(400) NOT NULL,
  priv_key VARCHAR(400) NOT NULL,
  pub_key VARCHAR(400) NOT NULL,
  hex VARCHAR(400) NOT NULL,
  created_at timestamp(0) without time zone NOT NULL DEFAULT timezone('UTC'::text, now()),
  used BOOLEAN NOT NULL DEFAULT false,
  used_at timestamp(0) without time zone,

  CONSTRAINT address_pkey PRIMARY KEY (address)
)
WITH (
  OIDS=FALSE
);

CREATE INDEX address_currency_idx ON address (currency);

-- +goose Down
-- SQL section 'Down' is executed when this migration is rolled back

DROP INDEX address_currency_idx;
DROP TABLE address;

