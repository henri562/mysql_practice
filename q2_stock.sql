select stock_symbol as 'Stock Symbol', sum(value) as 'Profit or Loss'
from (select stock_symbol,
             case
                 when transaction_type = 'buy' then -stock_value
                 when transaction_type = 'sell' then stock_value
                 end as value
      from q2_stocks
     ) pl
group by stock_symbol
order by stock_symbol;