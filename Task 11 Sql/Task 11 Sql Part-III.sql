select * from customer

CREATE OR REPLACE FUNCTION customer_region(customer_segment varchar)
RETURNS varchar as $$
DECLARE 
output varchar;
BEGIN
select region from customer where segment='consumer';
IF segment='consumer' THEN output:='North';
ELSE output:='Eastern';
END IF;
RETURN output;
END;
$$ language plpgsql

select segment,customer_region('consumer') from customer