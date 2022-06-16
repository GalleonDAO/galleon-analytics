
CREATE OR REPLACE VIEW 
dune_user_generated.galleon_prices as

select
    b.symbol,
    a.hour,
    a.median_price as price
from        prices.prices_from_dex_data a
inner join  dune_user_generated.galleon_tokens b on a.contract_address = b.token_address
