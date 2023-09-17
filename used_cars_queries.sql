select make_name, model_name, price FROM usedcartestfinal
	 order by make_name, model_name, price
     limit 10;
	 
select make_name, price, savings, city FROM usedcartestfinal
WHERE city = losangeles
order by savings
limit 10;

insert overwrite directory '/user/kdelat15/usedcars/'
row format delimited fields terminated by ','
SELECT sp_id, sp_name, AVG(savings_amount) AS Average_Savings FROM usedcartestfinal
GROUP BY sp_id, sp_name
ORDER BY Average_Savings DESC
LIMIT 1000;
