
CREATE TABLE if not exists dune_user_generated.galleon_tokens
    (
      symbol varchar,        
      name varchar,                               
      index_type varchar,             
      issuance_model varchar, 
      issuance_chain varchar, 
      token_address bytea
      )
;

truncate table dune_user_generated.galleon_tokens;

insert into dune_user_generated.galleon_tokens 
(symbol,        name,                               index_type,             issuance_model, issuance_chain, token_address) values
('BYE',         'Basis Yield ETH Index',            'Leverage',             'Debt',         'Optimism',     '\x927Eb0dBC5c3FD172Fdfa72D563f71612eCB6122'::bytea),

;
