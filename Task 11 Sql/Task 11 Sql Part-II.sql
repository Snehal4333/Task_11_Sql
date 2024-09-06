select * from sales

--Check product of sales with the help of sales
	
CREATE OR REPLACE FUNCTION checksales(product_sales int)
RETURNS varchar as $$
DECLARE
output varchar;
BEGIN
IF (product_sales)<15 THEN output:='Large';
ELSE output:='Small';
END IF;
RETURN output;
END
$$ language plpgsql

select *,checksales(sales) from sales

--Check profit of customer with the help of profit

CREATE OR REPLACE FUNCTION checkprofit(product_profit int)
RETURNS varchar as $$
DECLARE
output varchar;
BEGIN
IF (product_profit) in (0,2,3,4) THEN output:='Loss';
ELSE output:='profit';
END IF;
RETURN output;
END
$$ language plpgsql

select *,checkprofit(profit) from sales

