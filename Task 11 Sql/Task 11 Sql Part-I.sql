select * from details

--1)Check Profit Or Loss of Product with the help of Amount
	
CREATE OR REPLACE FUNCTION checkamount(product_amount int)
RETURNS varchar as $$
DECLARE 
output varchar;
BEGIN
IF (product_amount)<1000 THEN output:='Loss';
ELSE output:='Profit';
END IF;
RETURN output;
END;
$$ language plpgsql

select *,checkamount(amount) from details 

--2)Check Big Or Small Quantity of Product with the help Quantity

CREATE OR REPLACE FUNCTION checkquantity(product_quantity int)
RETURNS varchar as $$
DECLARE
output varchar;
BEGIN
IF (product_quantity)<5 THEN output:='Big';
ELSE output:='Small';
END IF;
RETURN output;
END;
$$ language plpgsql

select *,checkquantity(quantity) from details

--3)Check High Or Low Product of Product with the help of Profit

CREATE OR REPLACE FUNCTION checkprofit(product_profit int)
RETURNS varchar as $$
DECLARE
output varchar;
BEGIN
IF (product_profit)<100 THEN output:='Low';
ELSE output:='High';
END IF;
RETURN output;
END  
$$ language plpgsql

select *,checkprofit(profit) from details

--4)Check Cash Or QR Code Modes of Payment with the help of payment_Mode

CREATE OR REPLACE FUNCTION checkpayment_mode(product_payment_mode varchar)
RETURNS varchar as $$
DECLARE
output varchar;
BEGIN
IF (product_payment_mode) in('COD','EMI','UPI') THEN output:='Cash';
ELSE output:='QR Code';
END IF;
RETURN output;
END
$$ language plpgsql

select *,checkpayment_mode(payment_mode) from details

--5)Check city of product with the help of city

CREATE OR REPLACE FUNCTION checkscity(product_city varchar)
RETURNS varchar as $$
DECLARE
output varchar;
BEGIN
IF(product_city) in ('Henderson','Fremont','philadelphia')THEN output:='Bengaluru';
ELSE output:='Delhi';
END IF;
RETURN output;
END
$$ language plpgsql

select *,checkcity(product_city) from details
