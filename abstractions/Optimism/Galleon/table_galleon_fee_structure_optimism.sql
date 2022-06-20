

CREATE TABLE if not exists dune_user_generated.galleon_fee_structure
    (
        symbol varchar,        
        methodologist varchar,      
        begin_date timestamp,                 
        end_date timestamp,                   
        streaming_fee float,  
        issue_fee decimal,  
        redeem_fee decimal,     
        methodologist_split decimal
    )
;
create index on dune_user_generated.galleon_fee_structure(symbol);
truncate table dune_user_generated.galleon_fee_structure;

insert into dune_user_generated.galleon_fee_structure
(symbol,        methodologist,      begin_date,                 end_date,                   streaming_fee,  issue_fee,  redeem_fee,   performance fee,    methodologist_split) values
('BYE',         null,               '2022-06-11'::timestamp,    current_date::timestamp,    .0000,          .0000,      .0000,          0.10),                0.00),

-- Notes:
    -- Dates are inclusive
    -- If methodologist is internal then null
